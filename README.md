# 🏥 Public Health Clinic Records System

A relational database system designed to digitise and manage patient records, appointments, medical histories, prescriptions, medications, and payments for a public health clinic in Sierra Leone.

Built with **MySQL** using **XAMPP (phpMyAdmin)** as part of the COMP 102 – Introduction to Database course at **Limkokwing University of Creative Technology**.

---

## 📋 Project Overview

| Detail | Info |
|---|---|
| **Course** | COMP 102 – Introduction to Database |
| **Institution** | Limkokwing University of Creative Technology |
| **Database** | MySQL (MariaDB 10.4.32) |
| **Tool** | XAMPP / phpMyAdmin |
| **Semester** | Semester 02 – 2025/2026 |

---

## 👥 Group Members

| Name | Student ID |
|---|---|
| I$ho Boi | 905006113 |
| Imran Sesay | 905006114 |
| Reginald Pearce | 905006115 |
| Lebbie Bangura | 905006116 |

---

## 🗄️ Database Structure

The database (`public_clinc`) contains **8 tables**:

| Table | Description |
|---|---|
| `patient` | Stores patient demographic and registration data |
| `doctor` | Stores doctor profiles and specialisations |
| `department` | Stores clinic departments and their locations |
| `appointment` | Manages scheduled patient-doctor consultations |
| `medical_record` | Stores diagnoses and treatments per patient visit |
| `prescription` | Records medications prescribed during consultations |
| `medication` | Tracks pharmacy inventory and expiry dates |
| `payment` | Records patient payment transactions |

---

## 🔗 Entity Relationships

```
department  ──< doctor ──< appointment >── patient
                   |                          |
                   └──< medical_record >──────┘
                               |
                         prescription

patient ──< payment
```

- **department → doctor** — One department has many doctors
- **patient → appointment** — One patient has many appointments
- **doctor → appointment** — One doctor has many appointments
- **patient → medical_record** — One patient has many medical records
- **doctor → medical_record** — One doctor creates many medical records
- **medical_record → prescription** — One record can have many prescriptions
- **patient → payment** — One patient can have many payments

---

## 📁 Repository Structure

```
public-health-clinic-db/
│
├── sql/
│   └── public_clinc.sql        # Full database SQL dump
│
├── diagrams/
│   ├── ER_Diagram.drawio       # Physical data model (draw.io)
│   └── ER_Diagram.png          # Exported ER diagram image
│
├── report/
│   └── COMP102_Project_Report.docx  # Full project report
│
└── README.md                   # This file
```

---

## 🚀 How to Set Up

### Requirements
- [XAMPP](https://www.apachefriends.org/) (includes MySQL + phpMyAdmin)

### Steps

**1. Start XAMPP**
- Open the XAMPP Control Panel
- Start **Apache** and **MySQL**

**2. Import the database**
- Open your browser and go to `http://localhost/phpmyadmin`
- Click **New** in the left panel and create a database named `public_clinc`
- Click the `public_clinc` database, then go to the **Import** tab
- Click **Choose File**, select `sql/public_clinc.sql`, and click **Go**

**3. Verify**
- You should now see all 8 tables in the left panel under `public_clinc`

---

## 🧪 Sample SQL Queries

```sql
-- View all patients
SELECT * FROM patient;

-- View all completed appointments with patient and doctor names
SELECT a.appointmentID, a.appointment_date,
       CONCAT(p.first_name, ' ', p.last_name) AS Patient,
       CONCAT(d.first_name, ' ', d.last_name) AS Doctor
FROM appointment a
INNER JOIN patient p ON a.patientID = p.patientID
INNER JOIN doctor  d ON a.doctorID  = d.doctorID
WHERE a.status_of_appointment = 'Completed';

-- Count total patients per blood group
SELECT blood_group, COUNT(*) AS Total
FROM patient
GROUP BY blood_group
ORDER BY Total DESC;

-- Check medication stock levels
SELECT Name_of_medication, quantity_in_stock, Unit_price, date_of_expiration
FROM medication
ORDER BY date_of_expiration ASC;
```

---

## 🌍 SDG Alignment

This project supports **UN Sustainable Development Goal 3 – Good Health and Well-being** by digitising clinic records to improve the quality, speed, and accuracy of healthcare delivery in Sierra Leone.

---

## 📄 License

This project was created for academic purposes at Limkokwing University of Creative Technology. Not for commercial use.
