package com.jehan.aid_kit.repositories;

import com.jehan.aid_kit.entities.Medication;
import org.springframework.data.cassandra.repository.CassandraRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface MedicationRepository extends CassandraRepository<Medication, UUID> {
}
