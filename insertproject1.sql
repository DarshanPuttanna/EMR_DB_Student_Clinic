Insert into  patients values

(1,'Dwane','Bravo','Male','dbravo1990@gmail.com','(800) 555-1205'),
(2,'Alex','Hales','Male','ahales67@gmail.com','(314) 555-8834'), 
(3,'Liana','Lukas','Female','lucasl12@gmail.com','(614) 555-4435'), 
(4,'Quinton','Boucher','Male','qboucher@gmail.com','(515) 355-8130'), 
(5,'Mark','Knight','Female','markknight@gmail.com','(499) 555-6187'), 
(6,'Natalie','Portman','Female','natalieport@gmail.com','(214) 995-2035'), 
(7,'Meg','Lanning','Female','maglan@gmail.com','(559) 555-2993'), 
(8,'Kaleigh','Eric','Male','kaleigh9@gmail.com','(549) 255-1551'), 
(9,'Virat','Kohli','Male','vkohli@gmail.com','(808) 555-6081'), 
(10,'Joe','Bill','Male','jbill@gmail.com','(559) 555-9375');

Insert into doctors values
(1,'Edward','Jenner','Male','36','ejenner@gmail.com','9551 UTD APT A, Charlotte, North Carolina, US, 28262','(314) 555-8834','General Physician'), 
(2,'Elizabeth','Blackwell','Female','45','elizabeth@gmail.com','9552 UTD APT B, Charlotte, North Carolina, US, 28262','(714) 455-8834','Dentist'), 
(3,'Daniel','Williams','Male','46','dwilliams@gmail.com','9553 UTD APT C, Charlotte, North Carolina, US, 28262','(814) 156-9834','Neurologist'), 
(4,'Alexander','Fleming','Male','55','alexander@gmail.com','9554 UTD APT D, Charlotte, North Carolina, US, 28262','(914) 455-7834','General Physician'), 
(5,'Helen','Brooke','Female','41','helen@gmail.com','9555 UTD APT E, Charlotte, North Carolina, US, 28262','(114) 455-2834','Cardiologist'), 
(6,'Jonathon','Trott','Male','47','jonathon@gmail.com','9556 UTD APT F, Charlotte, North Carolina, US, 28262','(414) 455-1834','Orthopedic');


insert into  insurance_company values
(1,'united health care','Multiplan','www.unitedhc.com','(312) 555-4800'),
(2,'ISO','Isoessential','www.iso.com','(282) 555-8961'),
(3,'Aetena','Goldplan','www.aetena.com','(912) 599-7600'),
(4,'Delta','Deltacare','www.delta.com','(912) 755-0008');

INSERT INTO patient_information values
(1,'9543 UTD APT A, Charlotte, North Carolina, US, 28262','224466','Albert','(811) 555-1205','test123456','1'),
(2,'9544 UTD APT B, Charlotte, North Carolina, US, 28262','764523','Watson','(811) 155-1205','test223456','2'),
(3,'9545 UTD APT C, Charlotte, North Carolina, US, 28262','263641','Lee','(811) 155-1205','test923456','3'),
(4,'9546 UTD APT D, Charlotte, North Carolina, US, 28262','464523','Shane','(811) 155-1205','test226456','4'),
(5,'9547 UTD APT A, Charlotte, North Carolina, US, 28262','964523','Hayden','(811) 155-1205','test225656','1'),
  (6,'9548 UTD APT B, Charlotte, North Carolina, US, 28262','564523','Ponting','(811) 155-1205','test293456','2'),
(7,'9549 UTD APT G, Charlotte, North Carolina, US, 28262','664523','Mills','(811) 155-1205','test220156','3'),
(8,'9554 UTD APT F, Charlotte, North Carolina, US, 28262','794523','Travis','(811) 155-1205','test123056','4'),
(9,'9555 UTD APT D, Charlotte, North Carolina, US, 28262','891523','Clarke','(811) 155-1205','test111456','1'),
(10,'9556 UTD APT B, Charlotte, North Carolina, US, 28262','994523','Symonds','(811) 155-1205','test299456','2');

insert into procedure_list values
(1,'Body Checkup'),
(2,'Rootcanal'),
(3,'Plaster of paris'),
(4,'ECG'),
(5,'EEG'),
(6,'XRAY'),
(7,'Teeth Fillings and Repairs');

insert into doctors_specialization values
(1,1,'General Physician',1),
(2,2,'Dentist',2),
(3,3,'Neurologist',5),
(4,4,'General Physician',1),
(5,5,'Cardiologist',4),
(6,6,'Orthopedic',6),
(7,2,'Dentist',7),
(8,6,'Orthopedic',3);


insert into Doctor_Schedule values
(1,1,'09:00:00','17:00:00'),
(2,2,'09:00:00','18:00:00'),
(3,3,'09:00:00','18:00:00'),
(4,4,'09:00:00','16:00:00'),
(5,5,'09:00:00','18:00:00'),
(6,6,'09:00:00','18:00:00');

insert into appointments values
(1,1,'Dwane','Bravo','2021-04-03 12:30:00',1,'Body Pain'),
(2,2,'Alex','Hales','2021-04-04 12:30:00',2,'Tooth Pain'),
(3,3,'Liana','Lukas','2021-12-04 16:30:00',3,'Acute Spinal Cord Injury'), 
(4,4,'Quinton','','2021-04-05 14:10:00',4,'Body Pain'), 
(5,5,'Mark','','2021-04-06 11:40:00',5,'Chest Pain'), 
(6,6,'Natalie','','2021-04-04 12:30:00',6,'Knee Pain'), 
(7,7,'Meg','','2021-04-07 12:30:00',1,'Cold and Cough'), 
(8,8,'Kaleigh','Eric','2021-04-08 12:30:00',4,'Head ache and vomiting sensation'),
(9,9,'Virat','Kohli','2021-04-02 12:30:00',6,'Pain in Arm'), 
(10,10,'Joe','Bill','2021-04-04 12:30:00',2,'Teeth filling');
(11,10,'Joe','Bill','2021-04-05 12:30:00',2,'Teeth filling');

insert into visitors_info values
(1,1,'Body Pain','2021-04-03 12:30:00'),
(2,2,'Tooth Pain','2021-04-04 12:30:00'),
(3,3,'Acute Spinal Cord Injury','2021-12-04 16:30:00'), 
(4,4,'Body Pain','2021-04-05 14:10:00'), 
(5,5,'Chest Pain','2021-04-06 11:40:00'), 
(6,6,'Knee Pain','2021-04-04 12:30:00'), 
(7,7,'Cold and Cough','2021-04-07 12:30:00'), 
(8,8,'Head ache','2021-04-08 12:30:00'), 
(9,9,'Pain in hand','2021-04-02 12:30:00'), 
(10,10,'Teeth Filling','2021-04-04 12:30:00');

insert into symptoms values 
(1,1,'Body Pain'),
(2,2,'Tooth Pain'),
(3,3,'Acute Spinal Cord Injury'),
(4,4,'Body Pain'),
(5,5,'Chest Pain'),
(6,6,'Knee Pain'),
(7,7,'Cold'),
(8,8,'Head ache'),
(9,9,'Pain in hand'),
(10,10,'Teeth Filling'),
(11,7,'COugh');

insert into checkup values
(1,1,'Body Pain','1','1','Fever','need some medicenes'),
(2,2,'Tooth Pain','2','2','tooth infection','need for other tooth'),
(3,3,'Acute Spinal Cord Injury ','5','3','spinal cord injury','x-ray result needed'),
(4,4,'Body Pain','1','4','Fever','take mentioned medicenes'),
(5,5,'Chest Pain','4','5','Mild heart attack','ECG needed'),
(6,6,'Knee Pain','6','6','knee injury','Need of x-ray'),
(7,7,'Cold and Cough','1','1','Fever','take some Medicenes'),
(8,8,'Head ache','1','4','Mild fever','take some Medicenes'),
(9,9,'Pain in hand','3','6','Fracture','Need of x-ray'),
(10,10,'Teeth Filling','7','2','no major problem','need teeth filling');


INSERT INTO medicene VALUES(1001,"Medicine1","Manufacture1", 5);
INSERT INTO medicene VALUES(1002,"Medicine2","Manufacture1", 4);
INSERT INTO medicene VALUES(1003,"Medicine3","Manufacture1", 7);
INSERT INTO medicene VALUES(1004,"Medicine4","Manufacture1", 10);
INSERT INTO medicene VALUES(1005,"Medicine5","Manufacture1", 4);
INSERT INTO medicene VALUES(1006,"Medicine6","Manufacture1", 6);
INSERT INTO medicene VALUES(1007,"Medicine1","Manufacture2", 5);
INSERT INTO medicene VALUES(1008,"Medicine2","Manufacture2", 4);
INSERT INTO medicene VALUES(1009,"Medicine7","Manufacture3", 7);
INSERT INTO medicene VALUES(1010,"Medicine8","Manufacture3", 10);
INSERT INTO medicene VALUES(1011,"Medicine4","Manufacture4", 4);
INSERT INTO medicene VALUES(1012,"Medicine5","Manufacture5", 6);


INSERT INTO inventory VALUES(1,1001,10);
INSERT INTO inventory VALUES(2,1002,154);
INSERT INTO inventory VALUES(3,1003,150);
INSERT INTO inventory VALUES(4,1004,225);
INSERT INTO inventory VALUES(5,1005,9);
INSERT INTO inventory VALUES(6,1006,118);
INSERT INTO inventory VALUES(7,1007,100);
INSERT INTO inventory VALUES(8,1008,8);
INSERT INTO inventory VALUES(9,1009,9);
INSERT INTO inventory VALUES(10,1010,240);
INSERT INTO inventory VALUES(11,1011,120);
INSERT INTO inventory VALUES(12,1012,220);
 
Insert into prescription values
(1,1,'1001','medicene 1 for fever'),
(2,2,'1002','medecene 2 apply 2 times a day'),
(3,3,'1003','pain relief spray 3 times a day'),
(4,4,'1004','take medicene 4 2 times a day'),
(5,5,'1005','Medicene 5 1 time a day'),
(6,6,'1006','apply medicene 4 5 times a day'),
(7,7,'1007','take medicene 1 2 times a day'),
(8,8,'1008','take medicene 2 3 times a day'),
(9,'9','1009','take medicene 7 once in a week'),
(10,10,'1010','apply medicene 8 once in a day');


Insert into billing_info values
(1,1,'50.00','Own','Debit card'),
(2,2,'100.00','Own','Credit card'),
(3,3,'1500.00','Insurance Claim',''),
(4,4,'50.00','Own','Cash'),
(5,5,'260.00','Own','Credit card'),
(6,6,'750.00','Own','Credit card'),
(7,7,'50.00','Own','Debit card'),
(8,8,'50.00','Insurance Claim',''),
(9,9,'750.00','Insurance Claim',''),
(10,10,'100.00','Own','Credit card');










