import sqlite3

conn = sqlite3.connect('hospital.db')
cur = conn.cursor()

def view_patients():
    for row in cur.execute("SELECT * FROM Patients"):
        print(row)

def view_appointments():
    for row in cur.execute("""SELECT a.app_id, p.name, d.name, a.date, a.status
                             FROM Appointments a
                             JOIN Patients p ON a.patient_id = p.patient_id
                             JOIN Doctors d ON a.doctor_id = d.doctor_id"""):
        print(row)

def add_patient():
    name = input("Name: ")
    age = int(input("Age: "))
    gender = input("Gender: ")
    phone = input("Phone: ")
    cur.execute("INSERT INTO Patients (name, age, gender, phone) VALUES (?, ?, ?, ?)",
                (name, age, gender, phone))
    conn.commit()
    print("✅ Patient added.")

def menu():
    while True:
        print("\n--- Hospital Management ---")
        print("1. View Patients")
        print("2. View Appointments")
        print("3. Add Patient")
        print("4. Exit")
        ch = input("Choose: ")
        if ch == '1':
            view_patients()
        elif ch == '2':
            view_appointments()
        elif ch == '3':
            add_patient()
        elif ch == '4':
            break
        else:
            print("❌ Invalid choice.")

menu()
conn.close()
