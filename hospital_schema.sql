
-- Hospital Management System Schema

CREATE TABLE Departments (
    department_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Doctors (
    doctor_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    specialty TEXT,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Patients (
    patient_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    gender TEXT,
    phone TEXT
);

CREATE TABLE Appointments (
    app_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    doctor_id INTEGER,
    date TEXT,
    status TEXT DEFAULT 'Scheduled',
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

CREATE TABLE Billing (
    bill_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    amount REAL,
    date TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

INSERT INTO Departments VALUES (1, 'Cardiology'), (2, 'Neurology'), (3, 'Orthopedics');
INSERT INTO Doctors VALUES (101, 'Dr. Smith', 'Cardiologist', 1);
INSERT INTO Doctors VALUES (102, 'Dr. Maya', 'Neurologist', 2);
INSERT INTO Patients VALUES (201, 'Alice', 30, 'Female', '9999988888');
INSERT INTO Appointments VALUES (301, 201, 101, '2025-07-03', 'Scheduled');
INSERT INTO Billing VALUES (401, 201, 2500.00, '2025-07-01');
