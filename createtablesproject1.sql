DROP DATABASE IF EXISTS University_Student_Clinic;
CREATE DATABASE University_Student_Clinic;

CREATE TABLE patients (
	patient_id int PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(10) DEFAULT '',
    gender varchar(10) not null,
    email_id varchar(30),
    contact_number varchar(30)
  );
  CREATE TABLE doctors (
  doctor_id int Primary Key auto_increment,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(10) DEFAULT '',
  gender varchar(10) not null,
  age int(10) NOT NULL,
  email_id varchar(30),
  address varchar(100),
  contact_number varchar(255) NOT NULL,
  specialization varchar(255) NOT NULL
);

Drop table if exists insurance_company;
CREATE TABLE insurance_company (
    insurance_id int PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(30) NOT NULL,
    insurance_plan VARCHAR(30) NOT NULL,
    company_website varchar(30),
    contact_number varchar(30)
);

Drop table if exists patient_information;

CREATE TABLE patient_information (
    patient_id int PRIMARY KEY,
    address varchar(200) NOT NULL,
	social_security_number INT,
	emergencycontact_name VARCHAR(30),
    emergency_contact_number VARCHAR(30),
    insurance_number VARCHAR(15),
    insurance_company_id INT,
    CONSTRAINT patient_id_fk_patient FOREIGN KEY (patient_id)
        REFERENCES patients (patient_id),
    CONSTRAINT insurance_company_type_fk FOREIGN KEY (insurance_company_id)
        REFERENCES insurance_company (insurance_id)
);

Drop table if exists procedure_list;
CREATE TABLE procedure_list (
    procedure_id int PRIMARY KEY AUTO_INCREMENT,
    procedure_name VARCHAR(30) NOT NULL
);

Drop table if exists doctors_specialization;
CREATE TABLE doctors_specialization (
    specialization_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT,
    responsibility VARCHAR(20) NOT NULL,
    procedure_id INT,
    CONSTRAINT doctor_id_fk_ FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id),
    CONSTRAINT procedure_id_fk_ FOREIGN KEY (procedure_id)
        REFERENCES procedure_list (procedure_id)
);

Drop table if exists doctor_schedule;
CREATE TABLE doctor_schedule (
	availability_id int primary key AUTO_INCREMENT,
    Doctor_id int not null,
    in_time time not null,
    out_time time not null,
    CONSTRAINT doctorid_sch_fk_ FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id)    
);




Drop table if exists appointments;
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    patient_fname VARCHAR(30) NOT NULL,
    patient_lname VARCHAR(30) DEFAULT '',
    appointment_time DATETIME NOT NULL,
    doctor_id INT,
    patient_description VARCHAR(50) NOT NULL,
    CONSTRAINT doctorid_fk_ FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id),
     CONSTRAINT patient_id_fk_appo FOREIGN KEY (patient_id)
        REFERENCES patients (patient_id)   
);

Drop table if exists visitors_info;
CREATE TABLE visitors_info (
    visitor_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    visitor_description VARCHAR(100) NOT NULL,
	visited_time DATETIME NOT NULL,
    CONSTRAINT appoinmentid_fk_ FOREIGN KEY (appointment_id)
        REFERENCES appointments (appointment_id)
);

Drop table if exists symptoms;
CREATE TABLE symptoms
 (
	symptoms_id int primary key auto_increment,
    visitor_id INT NOT NULL,
    symptoms_desc varchar(50),
    CONSTRAINT visitor_id_fk FOREIGN KEY (visitor_id)
        REFERENCES visitors_info (visitor_id)
);

Drop table if exists checkup;
CREATE TABLE checkup (
	checkup_id int PRIMARY KEY AUTO_INCREMENT,
    visitor_id INT ,
    symptoms_desc varchar(50),
    procedure_id INT NOT NULL,
    doctor_id INT,
    result VARCHAR(20) NOT NULL,
    doctor_comment VARCHAR(50) NOT NULL,
    CONSTRAINT visitor_id_fk_tests FOREIGN KEY (visitor_id)
        REFERENCES visitors_info (visitor_id),
    CONSTRAINT doctorid_fk_tests FOREIGN KEY (doctor_id)
        REFERENCES doctors (doctor_id),
    CONSTRAINT procedureid_fk_treatment FOREIGN KEY (procedure_id)
        REFERENCES procedure_list (procedure_id)
);

Drop table if exists medicene;
CREATE TABLE medicene (
    medicene_id INT PRIMARY KEY AUTO_INCREMENT,
    medicene_name VARCHAR(255) NOT NULL,
    manufacture VARCHAR(255) NOT NULL,
    amount INT NOT NULL
);

Drop table if exists inventory;
CREATE TABLE inventory(
	inventory_id INT Primary key AUTO_INCREMENT,
	medicine_id INT NOT NULL,
	stock_remaining INT NOT NULL,
    CONSTRAINT FK_medicineinventory FOREIGN KEY (medicine_id)
		REFERENCES medicene (medicene_id)
    );

Drop table if exists prescription;
CREATE TABLE prescription (
    prescription_id INT PRIMARY KEY AUTO_INCREMENT,
    visitor_id INT,
    medicene_id INT,
    prescription_comment VARCHAR(200),
    CONSTRAINT visitorid_pre_fk FOREIGN KEY (visitor_id)
        REFERENCES visitors_info (visitor_id),
	 CONSTRAINT FK_medicene_pres FOREIGN KEY (medicene_id)
		REFERENCES medicene (medicene_id)
);

Drop table if exists billing_info;
CREATE TABLE billing_info (
    receipt_id INT PRIMARY KEY AUTO_INCREMENT,
    visitor_id INT NOT NULL,
    total_bill FLOAT NOT NULL,
    payment_by VARCHAR(150),
    payment_method VARCHAR(150),
    CONSTRAINT visitorid_bill_fk FOREIGN KEY (visitor_id)
        REFERENCES visitors_info (visitor_id)
);




