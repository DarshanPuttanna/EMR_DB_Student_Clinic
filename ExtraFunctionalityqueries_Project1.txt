# select statement to find the remaining stocks of medicenes in inventory

select medicene.medicene_name, inventory.stock_remaining
 from medicene inner join inventory 
 on medicene.medicene_id=inventory.medicine_id;


#select the patients name whos insurance company name is ISO from vistors_info

select concat(first_name,"  ", last_name) 
as patient_name, gender, p.contact_number 
from patients p inner join patient_information pi on p.patient_id = pi.patient_id
inner join  insurance_company i on 
i.insurance_id = pi.insurance_company_id
where company_name='ISO';


# Retriving the patients name from billing table visitor id 

select total_bill, concat (a.patient_fname, " ", a.patient_lname ) as patient_name
 from billing_info b
inner join visitors_info v on b.visitor_id=v.visitor_id
inner join appointments a on v.appointment_id = a.appointment_id
where v.visitor_id=6;


# Retriving patients doctor details

select CONCAT( p.first_name,' ', p.last_name) as Patient_Name,
concat(d.first_name,' ',d.last_name) as Doctor_Name,
pr.procedure_name as Procedure_Done
FROM
  visitors_info v join appointments a on v.appointment_id= a.appointment_id
  join patients p on p.patient_id=a.patient_id
  join doctors  d on d.doctor_id=a.doctor_id 
  join checkup  c on c.visitor_id=v.visitor_id
  join procedure_list  pr on pr.procedure_id=c.procedure_id; 


# Retrieving stock remaining from inventory whose count is less than 100.

select m.medicene_id,medicene_name,manufacture,stock_remaining from medicene m 
join inventory i 
on m.medicene_id=i.medicine_id
where i.stock_remaining <100;

# Retrieving schedules of Doctor along with their specialization

select distinct concat(d.first_name,' ',d.last_name) as Doctor_Name, d.specialization as Designation,
ds.in_time as From_Time,ds.out_time as Till
from doctors  d 
inner join doctor_schedule ds on d.doctor_id=ds.doctor_id
inner join doctors_specialization dsp on dsp.doctor_id=d.doctor_id
order by d.first_Name;

# Retriving the names of patients whose billing amount is greater than 500 

select total_bill, concat (a.patient_fname, " ", a.patient_lname ) as patient_name
 from billing_info b
inner join visitors_info v on b.visitor_id=v.visitor_id
inner join appointments a on v.appointment_id = a.appointment_id
where b.total_bill > 500;



# List of patients name whose appointment is after April 3 2021

select p.patient_id, concat(p.first_name, " ", p.last_name) AS "Patient Name", a.appointment_time
from appointments a join doctors d on a.doctor_id=d.doctor_id 
join patients p on p.patient_id=a.patient_id
 where appointment_time>"2021-04-03" order by appointment_time; 





  