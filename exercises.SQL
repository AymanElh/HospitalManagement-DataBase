
-- 1. Insert a new patient into the patients table
INSERT INTO patients 
(first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES
("Alex", "Johson", "male", "1990-07-15", "123457890", "Alexjohson@example.com", "900 wilson street");


-- 2. Select all departments
SELECT * FROM departments;

-- 3. Order patients with their date of birth
SELECT * FROM patients ORDER BY date_of_birth;

-- 4. Fileter patients per gender
SELECT DISTINCT gender FROM patients;

-- 5. Top 3 doctors
SELECT * FROM doctors LIMIT 3;

-- 6. Patients born after 2000
SELECT * FROM patients WHERE date_of_birth >= "2000-01-01"

-- 7. Doctors on cardiology and neurology dep
SELECT * FROM doctors 
WHERE department_id IN (
    SELECT department_id FROM departments
    WHERE department_name LIKE "Cardiology"
    OR department_name LIKE "Neurology"
);

-- 8. Admission date between 2024-12-01 and 2024-12-09
SELECT * FROM admissions 
WHERE admission_date >= "2024-12-01" AND admission_date <= "2024-12-07"

-- 9. add a column of patients categories;
SELECT first_name, last_name, 
    TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) AS age,
    CASE 
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) < 18 THEN "Child"
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) BETWEEN 18 AND 40 THEN "Adult"
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, NOW()) > 40 THEN "Senior"
    END AS Category
FROM patients;


-- 10. Total number of appointments
SELECT COUNT(*) AS TotalAppointments FROM appointments;
        
-- 11. Total doctors by department
SELECT dep.department_name, COUNT(doc.doctor_id) FROM doctors doc
JOIN departments dep ON dep.department_id = doc.department_id
GROUP BY doc.department_id;

-- 12. Average of patients age
SELECT AVG(TIMESTAMPDIFF(YEAR, date_of_birth, NOW())) AS AverageAge FROM patients;

-- 13. the last appointment saved
SELECT * FROM appointments
ORDER BY appointment_date DESC, appointment_time DESC
LIMIT 1;

-- 14. Total admission per room
SELECT room_number, COUNT(admission_id) AS totalAdmissions FROM admissions
JOIN rooms ON rooms.room_id = admissions.room_id
GROUP BY admissions.room_id;

-- 15. All patient without email
SELECT * FROM patients WHERE email IS NULL;

-- 16. Appointments with doctor and patients
SELECT CONCAT(patients.first_name, " ", patients.last_name) AS Patient,
     CONCAT(doctors.first_name, " ", doctors.last_name) AS Doctor,
     appointment_date FROM appointments
JOIN patients ON patients.patient_id = appointments.patient_id
JOIN doctors ON doctors.doctor_id = appointments.doctor_id;

-- 17. Delete appointments before 2024;
DELETE FROM appointments WHERE appointment_date < '2024-01-01';

-- 18. update oncology department name
UPDATE departments SET department_name = "Cancer Treatment" WHERE department_name LIKE "Oncology";

-- 19. 
SELECT gender, COUNT(gender) FROM patients GROUP BY gender;

-- 20.
CREATE VIEW active_admission AS 
SELECT * FROM admissions WHERE discharge_date IS NULL;


-- BONUS
-- 1. 
SELECT CONCAT(patients.first_name, " ", patients.last_name), CONCAT(doctors.first_name, " ", doctors.last_name)
FROM patients
JOIN prescriptions ON prescriptions.patient_id = patients.patient_id
JOIN doctors ON doctors.doctor_id = prescriptions.doctor_id;

-- 2. 
SELECT appointment_id, appointment_date, department_name FROM appointments
JOIN doctors ON doctors.doctor_id = appointments.doctor_id
JOIN departments ON departments.department_id = doctors.department_id;

-- 3. 
SELECT CONCAT(first_name, " ", last_name), medication_name FROM medications
JOIN prescriptions ON prescriptions.medication_id = medications.medication_id
JOIN doctors ON doctors.doctor_id = prescriptions.doctor_id;

-- 4.
SELECT CONCAT(first_name, " ", last_name), admission_date, room_number FROM patients
JOIN admissions ON admissions.patient_id = patients.patient_id
JOIN rooms ON rooms.room_id = admissions.room_id;

-- 5. 
