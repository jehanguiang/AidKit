-- Create the medication table
CREATE TABLE IF NOT EXISTS aidkit.medication (
                                                 id UUID PRIMARY KEY,
                                                 name TEXT,
                                                 purpose TEXT,
                                                 side_effects LIST<TEXT>,
                                                 expiry_date DATE
);

-- Insert dummy data
INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Ibuprofen', 'Pain relief and anti-inflammatory', ['Stomach upset', 'Dizziness', 'Nausea'], '2026-06-15');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Amoxicillin', 'Antibiotic for bacterial infections', ['Diarrhea', 'Rash', 'Allergic reactions'], '2025-12-01');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Paracetamol', 'Fever and pain relief', ['Liver damage with overdose', 'Skin rash'], '2027-03-20');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Omeprazole', 'Acid reflux and stomach ulcers', ['Headache', 'Nausea', 'Vitamin B12 deficiency'], '2025-09-10');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Loratadine', 'Antihistamine for allergies', ['Drowsiness', 'Dry mouth', 'Headache'], '2026-08-25');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Metformin', 'Type 2 diabetes management', ['Nausea', 'Diarrhea', 'Lactic acidosis'], '2026-11-30');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Lisinopril', 'High blood pressure treatment', ['Dry cough', 'Dizziness', 'Fatigue'], '2027-01-15');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Atorvastatin', 'Cholesterol reduction', ['Muscle pain', 'Liver damage', 'Digestive issues'], '2026-04-20');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Aspirin', 'Pain relief and blood thinner', ['Stomach bleeding', 'Ulcers', 'Tinnitus'], '2027-07-10');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Cetirizine', 'Allergy relief', ['Drowsiness', 'Dry mouth', 'Fatigue'], '2026-09-05');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Prednisone', 'Anti-inflammatory steroid', ['Weight gain', 'Mood changes', 'Insomnia'], '2025-10-18');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Salbutamol', 'Asthma and bronchospasm relief', ['Tremors', 'Rapid heartbeat', 'Headache'], '2026-02-28');

INSERT INTO aidkit.medication (id, name, purpose, side_effects, expiry_date)
VALUES (uuid(), 'Diazepam', 'Anxiety and muscle spasms', ['Drowsiness', 'Dependence', 'Memory issues'], '2025-08-12');


select * from aidkit.medication;
DROP TABLE aidkit.medication;