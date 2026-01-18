package com.jehan.aid_kit.controllers;

import com.jehan.aid_kit.entities.Medication;
import com.jehan.aid_kit.services.AiService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/ai")
public class AiController {

    private final AiService aiService;

    public AiController(AiService aiService) {
        this.aiService = aiService;
    }

    @PostMapping("/ask/medication")
    public ResponseEntity<String> askAboutPatients(@RequestBody AskRequest request) {
        String response = aiService.askWithDbContext(request.question(), Medication.class);
        return ResponseEntity.ok(response);
    }

    public record AskRequest(String question) {}
}
