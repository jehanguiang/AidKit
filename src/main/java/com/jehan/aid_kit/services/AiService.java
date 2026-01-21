package com.jehan.aid_kit.services;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.cassandra.core.CassandraTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class AiService {

    private final RestTemplate restTemplate;
    private final CassandraTemplate cassandraTemplate;
    
    @Value("${ollama.base-url:http://localhost:11434}")
    private String ollamaBaseUrl;
    
    @Value("${ollama.model:deepseek-r1:8b}")
    private String model;

    public AiService(CassandraTemplate cassandraTemplate) {
        this.restTemplate = new RestTemplate();
        this.cassandraTemplate = cassandraTemplate;
    }

    public <T> String askWithDbContext(String userQuestion, Class<T> entityClass) {
        // 1. Query Cassandra for context
        List<T> rows = cassandraTemplate.select(
                "SELECT * FROM " + entityClass.getSimpleName().toLowerCase() + " LIMIT 100", entityClass
        );

        // 2. Format as context
        String dbContext = rows.stream()
                .map(Object::toString)
                .collect(Collectors.joining("\n"));

        // 3. Build prompt with context
        String prompt = """
            You have access to the following database records:
            %s
            
            User question: %s
            
            Answer based on the data provided.
            """.formatted(dbContext, userQuestion);

        // 4. Call DeepSeek via Ollama REST API
        return callOllama(prompt);
    }
    
    private String callOllama(String prompt) {
        String url = ollamaBaseUrl + "/api/generate";
        
        Map<String, Object> request = Map.of(
                "model", model,
                "prompt", prompt,
                "stream", false
        );
        
        @SuppressWarnings("unchecked")
        Map<String, Object> response = restTemplate.postForObject(url, request, Map.class);
        
        String result = response != null ? (String) response.get("response") : "No response from Ollama";
        return result.replace("*", "");
    }
}
