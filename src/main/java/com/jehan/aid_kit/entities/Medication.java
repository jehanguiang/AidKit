package com.jehan.aid_kit.entities;

import lombok.Data;
import org.springframework.data.cassandra.core.mapping.Column;
import org.springframework.data.cassandra.core.mapping.PrimaryKey;
import org.springframework.data.cassandra.core.mapping.Table;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Data
@Table("medication")
public class Medication {
    
    @PrimaryKey
    private UUID id;
    
    private String name;
    
    private String purpose;
    
    @Column("side_effects")
    private List<String> sideEffects;
    
    @Column("expiry_date")
    private LocalDate expiryDate;
}
