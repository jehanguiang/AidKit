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


select * from aidkit.medication;
DROP TABLE aidkit.medication;