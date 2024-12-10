DROP DATABASE IF EXISTS HospitalManagement;
CREATE DATABASE HospitalManagement;
USE HospitalManagement;


CREATE TABLE IF NOT EXISTS patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    phone_number VARCHAR(15),
    email VARCHAR(50),
    address VARCHAR(25)
);


CREATE TABLE IF NOT EXISTS medications (
    medication_id INT PRIMARY KEY AUTO_INCREMENT,
    medication_name VARCHAR(100),
    dosage VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number SMALLINT UNIQUE,
    room_type ENUM('General', 'Private', 'ICU'),
    avaibility TINYINT(1)
);

CREATE TABLE IF NOT EXISTS departments(
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50),
    location VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES departments(department_id)
);
ALTER TABLE doctors ADD CONSTRAINT FOREIGN KEY(department_id) REFERENCES departments(department_id) ON DELETE CASCADE;


CREATE TABLE IF NOT EXISTS staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(50),
    phone_number VARCHAR(15),
    email VARCHAR(50),
    department_id INT,
    FOREIGN KEY(department_id) REFERENCES departments(department_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS admissions (
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    room_id INT,
    admission_date DATE,
    discharge_date DATE,
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY(room_id) REFERENCES rooms(room_id)
);

CREATE TABLE IF NOT EXISTS appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    doctor_id INT,
    patient_id INT,
    reason VARCHAR(255),
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id) ON DELETE CASCADE,
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id)
);

CREATE TABLE IF NOT EXISTS prescriptions (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    medication_id INT,
    prescription_date DATE,
    dosage_instructions VARCHAR(255),
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY(medication_id) REFERENCES medications(medication_id)
);



-- CREATE INDEX ON patientid_index ON patients(id);

ALTER TABLE patients ADD UNIQUE(phone_number);
ALTER TABLE patients ADD UNIQUE(email);
ALTER TABLE doctors ADD UNIQUE(phone_number);
ALTER TABLE doctors ADD UNIQUE(email);
ALTER TABLE staff ADD UNIQUE(phone_number);
ALTER TABLE staff ADD UNIQUE(email);