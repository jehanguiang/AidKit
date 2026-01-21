package com.jehan.aid_kit.controllers;

import com.jehan.aid_kit.entities.Medication;
import com.jehan.aid_kit.repositories.MedicationRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/medications")
public class MedicationController {

    private final MedicationRepository repository;

    public MedicationController(MedicationRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public List<Medication> getAll() { return repository.findAll(); }

    @PostMapping
    public Medication create(@RequestBody Medication medication) {
        return repository.save(medication);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable UUID id) { repository.deleteById(id); }
}