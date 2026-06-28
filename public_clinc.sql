-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2026 at 06:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public_clinc`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentID` int(11) NOT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `status_of_appointment` enum('Pending','Completed','Cancelled') DEFAULT NULL,
  `patientID` int(11) NOT NULL,
  `doctorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentID`, `appointment_date`, `appointment_time`, `status_of_appointment`, `patientID`, `doctorID`) VALUES
(50001, '2026-06-01', '09:00:00', 'Completed', 1, 20001),
(50002, '2026-06-01', '10:00:00', 'Completed', 2, 20002),
(50003, '2026-06-02', '11:15:00', 'Cancelled', 3, 20003),
(50004, '2026-06-02', '14:00:00', 'Completed', 4, 20004),
(50005, '2026-06-03', '08:30:00', 'Completed', 5, 20005),
(50006, '2026-06-03', '13:00:00', 'Completed', 6, 20006),
(50007, '2026-06-04', '09:45:00', 'Completed', 7, 20007),
(50008, '2026-06-04', '15:30:00', 'Cancelled', 8, 20008),
(50009, '2026-06-05', '10:00:00', 'Completed', 9, 20009),
(50010, '2026-06-05', '16:00:00', 'Completed', 10, 20010),
(50011, '2026-06-08', '11:00:00', 'Completed', 11, 20011),
(50012, '2026-06-08', '14:30:00', 'Completed', 12, 20012),
(50013, '2026-06-09', '09:15:00', 'Completed', 13, 20013),
(50014, '2026-06-09', '13:45:00', 'Cancelled', 14, 20014),
(50015, '2026-06-10', '10:30:00', 'Completed', 15, 20015),
(50016, '2026-06-12', '08:00:00', 'Completed', 16, 20016),
(50017, '2026-06-15', '15:00:00', 'Completed', 17, 20017),
(50018, '2026-06-18', '11:30:00', 'Completed', 18, 20018),
(50019, '2026-06-20', '09:00:00', 'Completed', 19, 20019),
(50020, '2026-06-22', '14:00:00', 'Completed', 20, 20020);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentID` int(11) NOT NULL,
  `name_of_department` varchar(150) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentID`, `name_of_department`, `location`, `description`) VALUES
(10001, 'Pharmacuitical', 'East Wing', 'The department is responsible for providing patients with their prescriptions'),
(40001, 'General Medicine', 'Ground Floor, Block A', 'Provides general consultations and primary healthcare services.'),
(40002, 'Paediatrics', 'First Floor, Block A', 'Specialises in the medical care of infants, children, and adolescents.'),
(40003, 'Maternity and Obstetrics', 'Second Floor, Block A', 'Handles antenatal care, delivery, and postnatal support for mothers.'),
(40004, 'Surgery', 'Ground Floor, Block B', 'Performs minor and major surgical procedures for clinic patients.'),
(40005, 'Pharmacy', 'Ground Floor, Block C', 'Dispenses medications and manages drug inventory for the clinic.'),
(40006, 'Emergency and Casualty', 'Ground Floor, Block D', 'Provides immediate care for urgent and life-threatening conditions.'),
(40007, 'Laboratory and Diagnostics', 'First Floor, Block B', 'Conducts blood tests, urinalysis, and other diagnostic procedures.'),
(40008, 'Dentistry', 'First Floor, Block C', 'Offers dental examinations, extractions, and oral health services.'),
(40009, 'Ophthalmology', 'Second Floor, Block B', 'Diagnoses and treats eye conditions and vision-related disorders.'),
(40010, 'Mental Health and Counselling', 'Third Floor, Block A', 'Provides psychological support, counselling, and psychiatric care.'),
(40011, 'Cardiology', 'Second Floor, Block C', 'Diagnoses and treats diseases and conditions of the heart and blood vessels.'),
(40012, 'Dermatology', 'First Floor, Block D', 'Treats skin, hair, and nail conditions for patients of all ages.'),
(40013, 'Neurology', 'Third Floor, Block B', 'Manages disorders of the brain, spinal cord, and nervous system.'),
(40014, 'Nutrition and Dietetics', 'Ground Floor, Block E', 'Provides dietary assessments and nutritional guidance to patients.'),
(40015, 'Physiotherapy', 'Ground Floor, Block F', 'Offers physical rehabilitation services for injury and post-surgery recovery.'),
(40016, 'Urology', 'Second Floor, Block D', 'Treats conditions affecting the urinary tract and male reproductive system.'),
(40017, 'Endocrinology', 'Third Floor, Block C', 'Manages hormonal disorders including diabetes and thyroid conditions.'),
(40018, 'Oncology', 'Third Floor, Block D', 'Provides diagnosis and treatment support for cancer patients.'),
(40019, 'Radiology', 'Ground Floor, Block G', 'Performs X-rays, ultrasounds, and imaging services for diagnosis.'),
(40020, 'Infectious Disease', 'First Floor, Block E', 'Diagnoses and manages communicable and infectious diseases.'),
(40021, 'Haematology', 'Second Floor, Block E', 'Specialises in blood disorders including anaemia and sickle cell disease.'),
(40022, 'Gastroenterology', 'First Floor, Block F', 'Treats disorders of the digestive system and gastrointestinal tract.'),
(40023, 'Neonatology', 'Second Floor, Block F', 'Provides specialised care for newborn infants, especially premature babies.'),
(40024, 'Rheumatology', 'Third Floor, Block E', 'Diagnoses and treats autoimmune and musculoskeletal conditions.'),
(40025, 'Community Health', 'Ground Floor, Block H', 'Coordinates public health outreach, immunisation, and disease prevention programmes.');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorID` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `specialization` varchar(150) DEFAULT NULL,
  `phone_number` varchar(40) DEFAULT NULL,
  `email_address` varchar(150) DEFAULT NULL,
  `home_address` varchar(250) DEFAULT NULL,
  `departmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorID`, `first_name`, `last_name`, `specialization`, `phone_number`, `email_address`, `home_address`, `departmentID`) VALUES
(20001, 'Lester', 'Franklin', 'Clinical Pharmacist', '+23275890162', '@Lfranklin@gmail.com', 'Cambull Street', 10001),
(20002, 'Mohamed', 'Bangura', 'General Practice', '+23276111002', 'm.bangura@clinic.sl', '5 Sanders Street, Freetown', 40001),
(20003, 'Fatmata', 'Sesay', 'General Practice', '+23276111003', 'f.sesay@clinic.sl', '9 Hill Station Road, Freetown', 40001),
(20004, 'Ibrahim', 'Kamara', 'Paediatrics', '+23276111004', 'i.kamara@clinic.sl', '3 Circular Road, Freetown', 40002),
(20005, 'Mariama', 'Conteh', 'Paediatrics', '+23276111005', 'm.conteh@clinic.sl', '18 Spur Road, Freetown', 40002),
(20006, 'Alhaji', 'Turay', 'Paediatric Cardiology', '+23276111006', 'a.turay@clinic.sl', '7 Lumley Beach Road, Freetown', 40002),
(20007, 'Hawa', 'Jalloh', 'Obstetrics and Gynaecology', '+23276111007', 'h.jalloh@clinic.sl', '22 Aberdeen Road, Freetown', 40003),
(20008, 'Isata', 'Mansaray', 'Obstetrics and Gynaecology', '+23276111008', 'i.mansaray@clinic.sl', '14 Regent Road, Freetown', 40003),
(20009, 'Abubakarr', 'Fofanah', 'Midwifery and Antenatal', '+23276111009', 'a.fofanah@clinic.sl', '6 Congo Cross, Freetown', 40003),
(20010, 'Samuel', 'Pearce', 'General Surgery', '+23276111010', 's.pearce@clinic.sl', '30 Siaka Stevens Street, Freetown', 40004),
(20011, 'Josephine', 'Lebbie', 'General Surgery', '+23276111011', 'j.lebbie@clinic.sl', '11 Pademba Road, Freetown', 40004),
(20012, 'David', 'Nicol', 'Orthopaedic Surgery', '+23276111012', 'd.nicol@clinic.sl', '2 Fourah Bay Road, Freetown', 40004),
(20013, 'Kadiatu', 'Koroma', 'Clinical Pharmacy', '+23276111013', 'k.koroma@clinic.sl', '45 Savage Street, Freetown', 40005),
(20014, 'Osman', 'Bah', 'Pharmacology', '+23276111014', 'o.bah@clinic.sl', '8 Charlotte Street, Freetown', 40005),
(20015, 'Tenneh', 'Kamara', 'Emergency Medicine', '+23276111015', 't.kamara@clinic.sl', '19 Brookfields Road, Freetown', 40006),
(20016, 'Alimamy', 'Turay', 'Emergency Medicine', '+23276111016', 'al.turay@clinic.sl', '33 Wellington Street, Freetown', 40006),
(20017, 'Ngozi', 'Bangura', 'Trauma and Critical Care', '+23276111017', 'n.bangura@clinic.sl', '4 Kissy Road, Freetown', 40006),
(20018, 'Rugiatu', 'Sesay', 'Clinical Laboratory Science', '+23276111018', 'r.sesay@clinic.sl', '27 King Street, Freetown', 40007),
(20019, 'Sullay', 'Conteh', 'Haematology', '+23276111019', 's.conteh@clinic.sl', '16 Rokel Street, Freetown', 40007),
(20020, 'Patricia', 'Williams', 'Diagnostic Imaging', '+23276111020', 'p.williams@clinic.sl', '10 Murray Town Road, Freetown', 40007),
(20021, 'Emmanuel', 'Fullah', 'General Dentistry', '+23276111021', 'e.fullah@clinic.sl', '1 Circular Road, Freetown', 40008),
(20022, 'Adama', 'Dumbuya', 'Oral and Maxillofacial', '+23276111022', 'a.dumbuya@clinic.sl', '38 Liverpool Street, Freetown', 40008),
(20023, 'Bintou', 'Koroma', 'Ophthalmology', '+23276111023', 'b.koroma@clinic.sl', '55 Wilberforce Street, Freetown', 40009),
(20024, 'Lansana', 'Bockarie', 'Optometry', '+23276111024', 'l.bockarie@clinic.sl', '21 Kroo Town Road, Freetown', 40009),
(20025, 'Haja', 'Sesay', 'Psychiatry and Counselling', '+23276111025', 'h.sesay@clinic.sl', '13 New England Road, Freetown', 40010);

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `recordID` int(11) NOT NULL,
  `diagnosis` varchar(300) DEFAULT NULL,
  `treatment` varchar(300) DEFAULT NULL,
  `date_of_record` date DEFAULT NULL,
  `patientID` int(11) NOT NULL,
  `doctorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_record`
--

INSERT INTO `medical_record` (`recordID`, `diagnosis`, `treatment`, `date_of_record`, `patientID`, `doctorID`) VALUES
(60001, 'Hypertension', 'Prescribed Lisinopril 10mg daily', '2026-06-01', 1, 20001),
(60002, 'Type 2 Diabetes', 'Metformin 500mg twice daily, dietary consultation', '2026-06-01', 2, 20002),
(60003, 'Acute Bronchitis', 'Amoxicillin 500mg, rest and hydration', '2026-06-02', 3, 20003),
(60004, 'Hyperlipidemia', 'Atorvastatin 20mg daily, follow-up in 3 months', '2026-06-02', 4, 20004),
(60005, 'Allergic Rhinitis', 'Fluticasone nasal spray daily, Cetirizine 10mg', '2026-06-03', 5, 20005),
(60006, 'Gastroesophageal Reflux', 'Omeprazole 20mg daily before breakfast', '2026-06-03', 6, 20006),
(60007, 'Vitamin D Deficiency', 'Ergocalciferol 50,000 IU weekly for 8 weeks', '2026-06-04', 7, 20007),
(60008, 'Generalized Anxiety', 'Referred to therapy, Escitalopram 10mg daily', '2026-06-04', 8, 20008),
(60009, 'Iron Deficiency Anemia', 'Ferrous Sulfate 325mg daily, dietary adjustments', '2026-06-05', 9, 20009),
(60010, 'Osteoarthritis', 'Acetaminophen 500mg as needed, physical therapy', '2026-06-05', 10, 20010),
(60011, 'Hypothyroidism', 'Levothyroxine 50mcg daily, repeat TSH in 6 weeks', '2026-06-08', 11, 20011),
(60012, 'Migraine Headache', 'Sumatriptan 50mg at onset, log headache triggers', '2026-06-08', 12, 20012),
(60013, 'Asthma Flare-up', 'Albuterol inhaler as needed, 5-day Prednisone pack', '2026-06-09', 13, 20013),
(60014, 'Acute Sinusitis', 'Saline nasal rinse, Augmentin 875mg for 7 days', '2026-06-09', 14, 20014),
(60015, 'Insomnia', 'Sleep hygiene counseling, Zolpidem 5mg at bedtime', '2026-06-10', 15, 20015),
(60016, 'Urinary Tract Infection', 'Nitrofurantoin 100mg twice daily for 5 days', '2026-06-12', 16, 20016),
(60017, 'Eczema Flare-up', 'Hydrocortisone 2.5% cream to affected areas', '2026-06-15', 17, 20017),
(60018, 'Plant Fascitis', 'Stretching exercises, night splint, supportive footwear', '2026-06-18', 18, 20018),
(60019, 'Otitis Externa', 'Ofloxacin otic drops to affected ear for 7 days', '2026-06-20', 19, 20019),
(60020, 'Gout Flare-up', 'Allopurinol 100mg daily, Colchicine for acute pain', '2026-06-22', 20, 20020),
(60021, 'Obesity', 'Nutritional counseling, structured exercise plan', '2026-06-28', 21, 20021),
(60022, 'Sciatica', 'Gabapentin 300mg at bedtime, core exercises', '2026-06-28', 22, 20022),
(60023, 'Contact Dermatitis', 'Avoid trigger irritant, Triamcinolone 0.1% cream', '2026-06-29', 23, 20023),
(60024, 'Tension Headache', 'Ibuprofen 400mg as needed, stress reduction', '2026-06-29', 24, 20024),
(60025, 'B12 Deficiency', 'Cyanocobalamin 1000mcg IM injection monthly', '2026-06-30', 25, 20025);

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `medicationID` int(11) NOT NULL,
  `Name_of_medication` varchar(130) DEFAULT NULL,
  `quantity_in_stock` int(11) DEFAULT NULL,
  `Unit_price` decimal(10,0) DEFAULT NULL,
  `date_of_expiration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`medicationID`, `Name_of_medication`, `quantity_in_stock`, `Unit_price`, `date_of_expiration`) VALUES
(70001, 'Paracetamol', 150, 50, '2025-12-31'),
(70002, 'Ibuprofen', 200, 75, '2025-11-30'),
(70003, 'Amoxicillin', 100, 120, '2025-10-15'),
(70004, 'Cetirizine', 180, 60, '2025-09-20'),
(70005, 'Amlodipine', 90, 80, '2026-01-10'),
(70006, 'Loratadine', 130, 55, '2025-08-25'),
(70007, 'Metformin', 160, 100, '2026-03-05'),
(70008, 'Simvastatin', 140, 90, '2025-07-15'),
(70009, 'Omeprazole', 170, 70, '2025-12-01'),
(70010, 'Levothyroxine', 110, 85, '2026-02-20'),
(70011, 'Losartan', 95, 95, '2025-11-05'),
(70012, 'Albuterol', 125, 65, '2025-10-10'),
(70013, 'Sertraline', 105, 110, '2026-01-25'),
(70014, 'Clopidogrel', 115, 130, '2025-09-30'),
(70015, 'Furosemide', 135, 75, '2025-12-15'),
(70016, 'Pantoprazole', 145, 85, '2026-03-10'),
(70017, 'Rosuvastatin', 155, 150, '2025-08-05'),
(70018, 'Gabapentin', 125, 95, '2025-07-25'),
(70019, 'Aspirin', 180, 45, '2025-11-20'),
(70020, 'Doxycycline', 90, 140, '2026-02-28'),
(70021, 'Hydrochlorothiazide', 160, 60, '2025-10-25'),
(70022, 'Fluticasone', 100, 115, '2025-09-10'),
(70023, 'Vitamin D3', 200, 40, '2026-01-15'),
(70024, 'Montelukast', 125, 85, '2025-12-05'),
(70025, 'Prednisone', 140, 125, '2025-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientID` int(11) NOT NULL,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `blood_group` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientID`, `first_name`, `last_name`, `phone_number`, `address`, `gender`, `blood_group`, `registration_date`, `date_of_birth`) VALUES
(1, 'Ishmail', 'Kamara', '+23290562370', 'Baw-Baw', 'Male', 'B+', '2026-06-29', '2007-05-06'),
(2, 'Ejatu', 'Jagitay', '+23275690125', 'Hill station', 'Female', 'B+', '2026-06-24', '2007-06-22'),
(3, 'Sidi', 'Saccoh', '+23230561520', 'Lumley', 'Male', 'AB+', '2026-07-15', '2005-03-15'),
(4, 'kadie', 'sesay', '+23254780166', 'Ogo-Farm', 'Female', 'O+', '2027-01-05', '2000-04-28'),
(5, 'Reginald', 'Pearce', '+23254780125', 'Arbardeen', 'Female', 'O-', '2026-09-05', '2008-04-28'),
(6, 'Imram', 'Chernor', '+23254780125', 'Duazark', 'Male', 'B-', '2026-11-07', '2008-10-13'),
(7, 'Prince', 'Kofi', '+23254780445', 'Sherrif Drive', 'Male', 'AB-', '2027-10-03', '2007-04-28'),
(8, 'Adriel', 'Bami-Caulker', '+23262780225', 'Guma-gate', 'Male', 'A-', '2026-12-23', '2008-04-05'),
(9, 'Kingston', 'Lyle', '+23246790125', 'George Street', 'Male', 'O-', '2026-09-05', '2008-02-13'),
(10, 'Nancy', 'Kamara', '+23254780125', 'Timbo-Lane', 'Female', 'O+', '2026-09-05', '1987-08-12'),
(11, 'Nashery', 'Kamara', '+23270650125', 'Timbo-lane', 'Female', 'O-', '2026-09-05', '2017-04-10'),
(12, 'Tilda', 'Kamara', '+23254782539', 'Arbardeen', 'Female', 'B+', '2027-02-07', '2014-11-09'),
(13, 'Musa', 'Conteh', '+23231760125', 'Poti', 'Male', 'B-', '2026-11-05', '2011-04-28'),
(14, 'Salim', 'Sessay', '+23254780125', 'Arbardeen', 'Male', 'A+', '2026-09-05', '2007-02-15'),
(15, 'Sorie', 'Kargbo', '+23290562370', 'Malama', 'Male', 'B+', '2026-06-30', '2005-10-06'),
(16, 'Natalie', 'Queen', '+23246562309', 'Barthrust Street', 'Female', 'A-', '2026-10-30', '2007-10-06'),
(17, 'Light', 'Yagami', '+23290564170', 'Sussex', 'Male', 'AB+', '2027-06-30', '0000-00-00'),
(18, 'Kevin', 'Nuke', '+23290792370', 'New England', 'Male', 'O-', '2026-04-01', '2004-10-06'),
(19, 'Zainab', 'Kargbo', '+23290561170', 'Mile 13', 'Female', 'B+', '2026-08-21', '2008-10-20'),
(20, 'Yankande', 'Quinton', '+23290562370', 'Laka', 'Female', 'B+', '2026-06-30', '2007-07-06'),
(21, 'Jane', 'Smith', '555-5678', '456 Elm St, Townsville', 'Female', 'B-', '2024-02-20', '1990-07-23'),
(22, 'Michael', 'Johnson', '555-8765', '789 Oak St, Village', 'Male', 'O+', '2024-03-10', '1978-11-05'),
(23, 'Emily', 'Davis', '555-4321', '321 Maple Ave, Metropolis', 'Female', 'AB+', '2024-01-25', '1995-02-17'),
(24, 'Robert', 'Brown', '555-6789', '654 Pine St, Smalltown', 'Male', 'A-', '2024-02-05', '1982-09-30'),
(25, 'Linda', 'Wilson', '555-9876', '987 Cedar Rd, Oldtown', 'Female', 'B+', '2024-03-01', '1975-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` varchar(10) NOT NULL,
  `date_of_payment` date DEFAULT NULL,
  `method_of_payment` varchar(20) DEFAULT NULL,
  `status_of_payment` enum('Pending','Successful','Unsuccessful') DEFAULT NULL,
  `patientID` varchar(10) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `date_of_payment`, `method_of_payment`, `status_of_payment`, `patientID`, `amount`) VALUES
('80001', '2024-01-15', 'Credit Card', 'Successful', '00001', 1500.00),
('80002', '2024-02-20', 'Cash', 'Pending', '00002', 750.00),
('80003', '2024-03-10', 'Debit Card', 'Successful', '00003', 2000.00),
('80004', '2024-01-25', 'Insurance', 'Successful', '00004', 1800.00),
('80005', '2024-02-05', 'Credit Card', 'Pending', '00005', 950.00),
('80006', '2024-03-01', 'Cash', 'Successful', '00006', 1200.00),
('80007', '2024-01-18', 'Debit Card', 'Successful', '00007', 850.00),
('80008', '2024-02-25', 'Insurance', 'Pending', '00008', 2200.00),
('80009', '2024-03-12', 'Credit Card', 'Successful', '00009', 1700.00),
('80010', '2024-01-22', 'Cash', 'Successful', '00010', 1000.00),
('80011', '2024-02-28', 'Debit Card', 'Pending', '00011', 1350.00),
('80012', '2024-03-05', 'Insurance', 'Successful', '00012', 1600.00),
('80013', '2024-01-30', 'Credit Card', 'Successful', '00013', 1400.00),
('80014', '2024-02-15', 'Cash', 'Pending', '00014', 900.00),
('80015', '2024-03-20', 'Debit Card', 'Successful', '00015', 2100.00),
('80016', '2024-01-10', 'Insurance', 'Successful', '00016', 1750.00),
('80017', '2024-02-12', 'Credit Card', 'Pending', '00017', 950.00),
('80018', '2024-03-08', 'Cash', 'Successful', '00018', 1250.00),
('80019', '2024-01-14', 'Debit Card', 'Pending', '00019', 800.00),
('80020', '2024-02-22', 'Insurance', 'Successful', '00020', 1850.00),
('80021', '2024-03-18', 'Credit Card', 'Pending', '00021', 1950.00),
('80022', '2024-01-25', 'Cash', 'Successful', '00022', 1600.00),
('80023', '2024-02-10', 'Debit Card', 'Pending', '00023', 1400.00),
('80024', '2024-03-02', 'Insurance', 'Successful', '00024', 2000.00),
('80025', '2024-01-20', 'Credit Card', 'Pending', '00025', 1300.00);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionID` int(11) NOT NULL,
  `name_of_medication` varchar(200) DEFAULT NULL,
  `dosage` varchar(40) DEFAULT NULL,
  `duration` varchar(30) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `recordID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionID`, `name_of_medication`, `dosage`, `duration`, `notes`, `recordID`) VALUES
(90001, 'Amoxicillin', '500mg', '7 days', 'Take after meals', 60001),
(90002, 'Ibuprofen', '200mg', '5 days', 'For pain relief', 60002),
(90003, 'Paracetamol', '500mg', '3 days', 'Fever and pain', 60003),
(90004, 'Azithromycin', '250mg', '5 days', 'Complete course', 60004),
(90005, 'Loratadine', '10mg', '14 days', 'Allergy relief', 60005),
(90006, 'Metformin', '500mg', '30 days', 'Diabetes management', 60006),
(90007, 'Amlodipine', '5mg', '30 days', 'Blood pressure control', 60007),
(90008, 'Simvastatin', '20mg', '30 days', 'Cholesterol control', 60008),
(90009, 'Omeprazole', '20mg', '14 days', 'Acid reflux', 60009),
(90010, 'Levothyroxine', '100mcg', '60 days', 'Thyroid hormone', 60010),
(90011, 'Ciprofloxacin', '500mg', '7 days', 'Infection treatment', 60011),
(90012, 'Metronidazole', '500mg', '7 days', 'Bacterial infection', 60012),
(90013, 'Clopidogrel', '75mg', '30 days', 'Blood thinner', 60013),
(90014, 'Sertraline', '50mg', '30 days', 'Antidepressant', 60014),
(90015, 'Escitalopram', '10mg', '30 days', 'Depression therapy', 60015),
(90016, 'Prednisone', '20mg', '10 days', 'Anti-inflammatory', 60016),
(90017, 'Furosemide', '40mg', '15 days', 'Diuretic', 60017),
(90018, 'Losartan', '50mg', '30 days', 'Blood pressure', 60018),
(90019, 'Gabapentin', '300mg', '30 days', 'Nerve pain', 60019),
(90020, 'Melatonin', '3mg', '14 days', 'Sleep aid', 60020),
(90021, 'Doxycycline', '100mg', '7 days', 'Infection', 60021),
(90022, 'Naproxen', '250mg', '5 days', 'Pain and inflammation', 60022),
(90023, 'Fluoxetine', '20mg', '30 days', 'Depression', 60023),
(90024, 'Pantoprazole', '40mg', '14 days', 'Gastric issues', 60024),
(90025, 'Bisoprolol', '5mg', '30 days', 'Heart condition', 60025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentID`),
  ADD KEY `patientID` (`patientID`),
  ADD KEY `doctorID` (`doctorID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorID`),
  ADD KEY `departmentID` (`departmentID`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`recordID`),
  ADD KEY `patientID` (`patientID`),
  ADD KEY `doctorID` (`doctorID`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`medicationID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionID`),
  ADD KEY `recordID` (`recordID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`doctorID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`);

--
-- Constraints for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD CONSTRAINT `medical_record_ibfk_1` FOREIGN KEY (`patientID`) REFERENCES `patient` (`patientID`),
  ADD CONSTRAINT `medical_record_ibfk_2` FOREIGN KEY (`doctorID`) REFERENCES `doctor` (`doctorID`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`recordID`) REFERENCES `medical_record` (`recordID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
