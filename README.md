# 🏥 Hospital Management System (DBMS Project)

A resume-ready DBMS project built with SQL and Python.

## 📦 Features

- Normalized tables: Patients, Doctors, Appointments, Billing, Departments
- Primary & foreign keys with ON DELETE CASCADE
- Python CLI to view and add data
- Sample data included

## 📁 Files

- `hospital_schema.sql` – Full schema + inserts
- `hospital_cli.py` – Python interface using sqlite3

## ▶️ How to Run

1. Create the database:
```bash
sqlite3 hospital.db < hospital_schema.sql
```

2. Launch CLI app:
```bash
python hospital_cli.py
```

## 📌 Made for Resume

- Highlights SQL, relationships, and practical design
- You can expand with login, search, or web UI

---

Built by Rishitha for internship interviews like Goldman Sachs 🚀
