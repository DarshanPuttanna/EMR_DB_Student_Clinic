/* Update Doctor schedule timings*/
update doctor_schedule
set out_time= '20:00:00' where doctor_id=2;
select * from doctor_schedule;

/* Update insurance_company insurance plan*/
update insurance_company
set insurance_plan='United Health Secure' where insurance_id='1';
select * from insurance_company where insurance_id='1';

/* Update patient information-address and emergency contact name*/
update patient_information
set address ='9519 University Terrace Dr Apt G Charlotte' , emergencycontact_name = 'Pat Cummins'  
where patient_id=6;
select * from patient_information;

/* Update doctor comment on check_up table*/
update checkup
set doctor_comment='Take medicenes during day time only' where visitor_id=7;
select * from checkup;

/* Update manfacturer of medicene in medicene table */
update medicene
set manufacture='Manfacturer 9' where medicene_id=1008;
select * from medicene where medicene_id=1008;


