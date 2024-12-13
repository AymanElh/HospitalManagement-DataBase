USE HospitalManagement;

-- Insert data into patients table
INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number, email, address)
VALUES
('John', 'Doe', 'Male', '1985-06-15', '123-456-7890', 'john.doe@example.com', '123 Elm St'),
('Jane', 'Smith', 'Female', '1990-09-21', '987-654-3210', 'jane.smith@example.com', '456 Oak St'),
('Alice', 'Johnson', 'Female', '1987-03-12', '555-234-5678', 'alice.johnson@example.com', '789 Pine St'),
('Michael', 'Brown', 'Male', '1975-11-05', '444-123-6789', 'michael.brown@example.com', '101 Maple Ave'),
('Emily', 'Davis', 'Female', '1995-01-30', '222-987-6543', 'emily.davis@example.com', '202 Birch Rd'),
('Robert', 'Garcia', 'Male', '1983-07-18', '333-456-7891', 'robert.garcia@example.com', '303 Cedar Ln'),
('Jessica', 'Martinez', 'Female', '1992-10-02', '777-888-9999', 'jessica.martinez@example.com', '404 Spruce Blvd'),
('David', 'Wilson', 'Male', '1978-12-14', '888-777-6666', 'david.wilson@example.com', '505 Chestnut Ct'),
('Sophia', 'Anderson', 'Female', '2000-05-09', '999-111-2222', 'sophia.anderson@example.com', '606 Aspen Way'),
('James', 'Taylor', 'Male', '1968-02-26', '111-999-8888', 'james.taylor@example.com', '707 Fir St'),
('Olivia', 'Hernandez', 'Female', '1989-08-15', '666-555-4444', 'olivia.hernandez@example.com', '808 Poplar Pl'),
('Ethan', 'Moore', 'Male', '1997-03-10', '333-222-1111', 'ethan.moore@example.com', '909 Redwood Cir'),
('Mia', 'Lee', 'Female', '2001-06-22', '123-123-1234', 'mia.lee@example.com', '110 Spruce Ln'),
('Lucas', 'White', 'Male', '1973-04-08', '555-555-5555', 'lucas.white@example.com', '121 Alder Dr'),
('Chloe', 'Thompson', 'Female', '1998-11-11', '444-444-4444', 'chloe.thompson@example.com', '131 Holly St'),
('Benjamin', 'Martinez', 'Male', '1980-10-25', '777-777-7777', 'benjamin.martinez@example.com', '141 Juniper Rd'),
('Amelia', 'Clark', 'Female', '1993-07-03', '222-222-2222', 'amelia.clark@example.com', '151 Willow Ave'),
('Noah', 'Lopez', 'Male', '1985-12-31', '888-888-8888', 'noah.lopez@example.com', '161 Cypress Ln'),
('Isabella', 'Hill', 'Female', '1999-01-01', '666-666-6666', 'isabella.hill@example.com', '171 Sycamore Ct'),
('Mason', 'Green', 'Male', '1971-09-14', '999-999-9999', 'mason.green@example.com', '181 Palm Dr'),
('Ayman', 'Elh', 'Male', '2003-01-01', '997 888 777', 'ayman@example.com', '182 green street');


-- Insert data into medications
INSERT INTO medications (medication_name, dosage) 
VALUES 
('Paracetamol', '500 mg'),
('Ibuprofen', '200 mg'),
('Amoxicillin', '250 mg'),
('Metformin', '850 mg'),
('Omeprazole', '20 mg'),
('Ciprofloxacin', '500 mg'),
('Aspirin', '100 mg'),
('Simvastatin', '40 mg'),
('Lisinopril', '10 mg'),
('Albuterol', '90 mcg'),
('Atorvastatin', '20 mg'),
('Clonazepam', '1 mg'),
('Azithromycin', '500 mg'),
('Levothyroxine', '50 mcg'),
('Losartan', '50 mg'),
('Sertraline', '50 mg'),
('Pantoprazole', '40 mg'),
('Hydrochlorothiazide', '25 mg'),
('Gabapentin', '300 mg'),
('Montelukast', '10 mg');

-- Insert rooms data
INSERT INTO rooms (room_number, room_type, avaibility)
VALUES
(101, 'General', 1),
(102, 'General', 1),
(103, 'General', 0),
(104, 'General', 1),
(105, 'General', 0),
(106, 'General', 1),
(107, 'General', 1),
(108, 'General', 1),
(109, 'General', 0),
(110, 'General', 1),
(201, 'Private', 1),
(202, 'Private', 1),
(203, 'Private', 0),
(204, 'Private', 1),
(205, 'Private', 0),
(206, 'Private', 1),
(207, 'Private', 1),
(208, 'Private', 1),
(209, 'Private', 0),
(210, 'Private', 1),
(301, 'ICU', 1),
(302, 'ICU', 0),
(303, 'ICU', 1),
(304, 'ICU', 0),
(305, 'ICU', 1),
(306, 'ICU', 1),
(307, 'ICU', 0),
(308, 'ICU', 1),
(309, 'ICU', 0),
(310, 'ICU', 1),
(401, 'General', 1),
(402, 'General', 1),
(403, 'General', 0),
(404, 'Private', 1),
(405, 'Private', 0),
(406, 'Private', 1),
(407, 'ICU', 0),
(408, 'ICU', 1),
(409, 'ICU', 1),
(410, 'ICU', 0);


-- Insert departments data
INSERT INTO departments (department_name, location) 
VALUES
('Cardiology', 'Building A, Floor 2'),
('Neurology', 'Building A, Floor 3'),
('Pediatrics', 'Building B, Floor 1'),
('Radiology', 'Building C, Floor 1'),
('Orthopedics', 'Building B, Floor 2'),
('Emergency', 'Building D, Ground Floor'),
('Oncology', 'Building C, Floor 2'),
('Urology', 'Building B, Floor 3'),
('Dermatology', 'Building A, Floor 4'),
('Gynecology', 'Building B, Floor 4'),
('Psychiatry', 'Building C, Floor 3'),
('Endocrinology', 'Building A, Floor 5'),
('Ophthalmology', 'Building C, Floor 4'),
('ENT (Ear, Nose, Throat)', 'Building B, Floor 5'),
('Gastroenterology', 'Building D, Floor 1'),
('Nephrology', 'Building C, Floor 5'),
('Pulmonology', 'Building A, Floor 6'),
('Hematology', 'Building D, Floor 2'),
('Rehabilitation', 'Building E, Floor 1'),
('Research & Development', 'Building E, Floor 2');


-- Insert doctors
INSERT INTO doctors (first_name, last_name, specialization, phone_number, email, department_id)
VALUES
('John', 'Smith', 'Cardiologist', '123-456-7890', 'john.smith@hospital.com', 1),
('Jane', 'Doe', 'Neurologist', '987-654-3210', 'jane.doe@hospital.com', 2),
('Michael', 'Brown', 'Pediatrician', '555-123-4567', 'michael.brown@hospital.com', 3),
('Emily', 'Davis', 'Radiologist', '444-987-6543', 'emily.davis@hospital.com', 4),
('Robert', 'Garcia', 'Orthopedic Surgeon', '333-654-7891', 'robert.garcia@hospital.com', 5),
('Sarah', 'Wilson', 'Emergency Medicine', '222-555-1234', 'sarah.wilson@hospital.com', 6),
('William', 'Martinez', 'Oncologist', '111-444-2222', 'william.martinez@hospital.com', 7),
('Sophia', 'Anderson', 'Urologist', '666-999-8888', 'sophia.anderson@hospital.com', 8),
('David', 'Taylor', 'Dermatologist', '777-888-9999', 'david.taylor@hospital.com', 9),
('Olivia', 'Moore', 'Gynecologist', '888-777-6666', 'olivia.moore@hospital.com', 10),
('James', 'White', 'Psychiatrist', '999-111-2222', 'james.white@hospital.com', 11),
('Isabella', 'Hernandez', 'Endocrinologist', '123-123-1234', 'isabella.hernandez@hospital.com', 12),
('Lucas', 'Lee', 'Ophthalmologist', '555-555-5555', 'lucas.lee@hospital.com', 13),
('Mia', 'Clark', 'ENT Specialist', '444-444-4444', 'mia.clark@hospital.com', 14),
('Benjamin', 'Lopez', 'Gastroenterologist', '777-777-7777', 'benjamin.lopez@hospital.com', 15),
('Amelia', 'Hill', 'Nephrologist', '222-222-2222', 'amelia.hill@hospital.com', 16),
('Noah', 'Green', 'Pulmonologist', '888-888-8888', 'noah.green@hospital.com', 17),
('Chloe', 'Baker', 'Hematologist', '666-666-6666', 'chloe.baker@hospital.com', 18),
('Ethan', 'Adams', 'Rehabilitation Specialist', '333-333-3333', 'ethan.adams@hospital.com', 19),
('Charlotte', 'Perez', 'Researcher', '111-111-1111', 'charlotte.perez@hospital.com', 20),
('John', 'Smith', 'Cardiologist', '555-123-4567', 'john.smith@example.com', 1),
('Emily', 'Johnson', 'Neurologist', '555-987-6543', 'emily.johnson@example.com', 2),
('Michael', 'Brown', 'Orthopedic Surgeon', '555-456-7890', 'michael.brown@example.com', 3),
('Sarah', 'Davis', 'Pediatrician', '555-654-3210', 'sarah.davis@example.com', 4),
('David', 'Wilson', 'Dermatologist', '555-321-0987', 'david.wilson@example.com', 5),
('Emma', 'Taylor', 'General Physician', '555-789-0123', 'emma.taylor@example.com', 1),
('James', 'Anderson', 'Psychiatrist', '555-567-2345', 'james.anderson@example.com', 2),
('Olivia', 'Thomas', 'Radiologist', '555-678-3456', 'olivia.thomas@example.com', 3),
('Robert', 'Harris', 'Oncologist', '555-890-4567', 'robert.harris@example.com', 4),
('Sophia', 'Martin', 'Urologist', '555-012-5678', 'sophia.martin@example.com', 5);


INSERT INTO staff (first_name, last_name, job_title, phone_number, email, department_id)
VALUES
('Anna', 'Smith', 'Receptionist', '123-456-7890', 'anna.smith@hospital.com', 1),
('Brian', 'Jones', 'Administrative Assistant', '234-567-8901', 'brian.jones@hospital.com', 2),
('Catherine', 'Brown', 'Nurse', '345-678-9012', 'catherine.brown@hospital.com', 3),
('Daniel', 'Johnson', 'Lab Technician', '456-789-0123', 'daniel.johnson@hospital.com', 4),
('Ella', 'White', 'Radiology Technician', '567-890-1234', 'ella.white@hospital.com', 4),
('Frank', 'Garcia', 'Pharmacist', '678-901-2345', 'frank.garcia@hospital.com', 7),
('Grace', 'Martinez', 'Cleaner', '789-012-3456', 'grace.martinez@hospital.com', 6),
('Hannah', 'Lopez', 'Security Guard', '890-123-4567', 'hannah.lopez@hospital.com', 5),
('Ian', 'Clark', 'IT Specialist', '901-234-5678', 'ian.clark@hospital.com', 8),
('Julia', 'Hernandez', 'Nutritionist', '112-345-6789', 'julia.hernandez@hospital.com', 9),
('Kevin', 'Hill', 'Accountant', '223-456-7890', 'kevin.hill@hospital.com', 10),
('Laura', 'Green', 'HR Specialist', '334-567-8901', 'laura.green@hospital.com', 11),
('Michael', 'Adams', 'Nurse', '445-678-9012', 'michael.adams@hospital.com', 3),
('Nancy', 'Baker', 'Medical Coder', '556-789-0123', 'nancy.baker@hospital.com', 12),
('Oliver', 'Taylor', 'Janitor', '667-890-1234', 'oliver.taylor@hospital.com', 14),
('Paul', 'Moore', 'Transport Assistant', '778-901-2345', 'paul.moore@hospital.com', 13),
('Quinn', 'Perez', 'Nurse', '889-012-3456', 'quinn.perez@hospital.com', 15),
('Rachel', 'Lee', 'Volunteer Coordinator', '990-123-4567', 'rachel.lee@hospital.com', 19),
('Steven', 'Brown', 'Lab Technician', '101-234-5678', 'steven.brown@hospital.com', 4),
('Tina', 'Davis', 'Receptionist', '212-345-6789', 'tina.davis@hospital.com', 1);


INSERT INTO admissions (patient_id, room_id, admission_date, discharge_date)
VALUES 
(1, 2, '2023-01-15', '2023-01-20'),
(2, 4, '2023-02-10', '2023-02-18'),
(3, 1, '2023-03-05', '2023-03-10'),
(4, 3, '2023-03-15', '2023-03-22'),
(5, 6, '2023-04-01', '2023-04-08'),
(6, 8, '2023-04-10', '2023-04-20'),
(7, 5, '2023-05-01', '2023-05-15'),
(8, 7, '2023-05-18', '2023-05-25'),
(9, 9, '2023-06-01', '2023-06-05'),
(10, 10, '2023-06-10', '2023-06-15'),
(11, 12, '2023-07-01', '2023-07-10'),
(12, 11, '2023-07-15', '2023-07-25'),
(13, 13, '2023-08-01', '2023-08-07'),
(14, 14, '2023-08-10', '2023-08-20'),
(15, 15, '2023-09-01', '2023-09-15'),
(16, 16, '2023-09-20', '2023-09-30'),
(17, 17, '2023-10-01', '2023-10-05'),
(18, 18, '2023-10-10', '2023-10-15'),
(19, 19, '2023-11-01', '2023-11-07'),
(20, 20, '2023-11-10', '2023-11-15'),
(21, 3, '2024-12-04', '2024-12-10');


INSERT INTO appointments (appointment_date, appointment_time, doctor_id, patient_id, reason)
VALUES
('2023-12-01', '09:00:00', 1, 1, 'Regular Check-up'),
('2023-12-01', '10:30:00', 2, 2, 'Blood Pressure Follow-up'),
('2023-12-01', '11:15:00', 3, 3, 'Diabetes Consultation'),
('2023-12-02', '14:00:00', 4, 4, 'Back Pain Assessment'),
('2023-12-02', '15:30:00', 5, 5, 'Routine Physical Examination'),
('2023-12-03', '08:45:00', 6, 6, 'Cardiology Check'),
('2023-12-03', '10:00:00', 7, 7, 'Skin Rash Evaluation'),
('2023-12-03', '11:30:00', 8, 8, 'Asthma Management'),
('2023-12-04', '13:00:00', 9, 9, 'Migraine Consultation'),
('2023-12-04', '14:30:00', 10, 10, 'Post-surgery Follow-up'),
('2023-12-05', '09:15:00', 11, 11, 'Vaccination'),
('2023-12-05', '10:45:00', 12, 12, 'Pediatric Consultation'),
('2023-12-05', '12:00:00', 13, 13, 'Nutritional Advice'),
('2023-12-06', '15:00:00', 14, 14, 'Orthopedic Examination'),
('2023-12-06', '16:30:00', 15, 15, 'ENT Consultation'),
('2023-12-07', '08:30:00', 16, 16, 'Pre-employment Medical Check'),
('2023-12-07', '10:00:00', 17, 17, 'Mental Health Therapy'),
('2023-12-07', '11:45:00', 18, 18, 'Vision Test'),
('2023-12-08', '13:30:00', 19, 19, 'Pregnancy Check-up'),
('2023-12-08', '15:00:00', 20, 20, 'Dental Cleaning');


INSERT INTO prescriptions (patient_id, doctor_id, medication_id, prescription_date, dosage_instructions)
VALUES
(1, 1, 1, '2023-12-01', 'Take 1 tablet daily after breakfast'),
(2, 2, 2, '2023-12-01', 'Take 2 tablets every 6 hours for 7 days'),
(3, 3, 3, '2023-12-02', 'Take 1 tablet every morning for 30 days'),
(4, 4, 4, '2023-12-03', 'Apply cream to affected area twice daily for 14 days'),
(5, 5, 5, '2023-12-03', 'Take 1 capsule twice a day for 10 days'),
(6, 6, 6, '2023-12-04', 'Take 1 tablet before meals for 7 days'),
(7, 7, 7, '2023-12-04', 'Take 1 tablet every evening before bed'),
(8, 8, 8, '2023-12-05', 'Inhale 1 puff twice daily for asthma control'),
(9, 9, 9, '2023-12-05', 'Take 1 tablet every 4 hours as needed for pain'),
(10, 10, 10, '2023-12-06', 'Take 1 tablet every 12 hours for 10 days'),
(11, 11, 11, '2023-12-06', 'Take 1 injection every week for 4 weeks'),
(12, 12, 12, '2023-12-07', 'Take 1 syrup teaspoon 3 times daily for 5 days'),
(13, 13, 13, '2023-12-07', 'Take 1 tablet every morning and night for 7 days'),
(14, 14, 14, '2023-12-08', 'Take 1 tablet every morning after breakfast'),
(15, 15, 15, '2023-12-08', 'Apply ointment to skin lesion 3 times daily for 10 days'),
(16, 16, 16, '2023-12-09', 'Take 2 tablets once a day for 15 days'),
(17, 17, 17, '2023-12-09', 'Take 1 tablet every 8 hours as needed for fever'),
(18, 18, 18, '2023-12-10', 'Take 1 tablet daily for 14 days'),
(19, 19, 19, '2023-12-10', 'Take 2 capsules 3 times a day for 7 days'),
(20, 20, 20, '2023-12-11', 'Take 1 tablet 30 minutes before meals for 10 days');

