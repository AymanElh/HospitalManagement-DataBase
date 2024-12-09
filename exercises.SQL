
-- 1. Insert a new patient into the patients table
INSERT INTO patients 
(first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES
("Alex", "Johson", "1990-07-15", "male", "123457890", "Alexjohson@example.com", "900 wilson street");


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
