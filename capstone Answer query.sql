--SOLUTION TO CASE STUDY 

--a) How much is the total donation?
select sum(donation) as total_donation
from donation_data;

--b) What is the total donation by gender?
select gender,sum(donation)as donation_bygender
from donation_data
group by gender;

--c) Show the total donation and number of donations by gender
select gender,sum(donation)as total_donation,count(id)as No_ofdonation
from donation_data
group by gender;

--d) Total donation made by frequency of donation
select sum(d.donation)as total_donation,f.donation_frequency
from donation_data d
join donor_data f
on d."id"=f."id"
group by f.donation_frequency

--e) Total donation and number of donation by Job field

select job_field,sum(donation)as total_donation,count(id)as donation_count
from donation_data
group by job_field
order by job_field asc;


--f) Total donation and number of donations above $200
select donation,sum(donation) as total_donation,count(donation) as donation_count
from donation_data
where donation >200
group by Donation;


--g) Total donation and number of donations below $200
select donation,sum(donation) as total_donation,count(donation) as donation_count
from donation_data
where donation <200
group by Donation;
--h) Which top 10 states contributes the highest donations
select "state", sum(donation)as total_donation 
from donation_data
group by state
order by total_donation desc
limit 10;

--i) Which top 10 states contributes the least donations
select "state", sum(donation)as total_donation
from donation_data
group by state
order by total_donation asc
limit 10;

--j) What are the top 10 cars driven by the highest donors
select d.first_name,d.last_name,f.car ,sum(donation)as total_donation
from donation_data d
join donor_data f
on d.id=f.id
group by first_name,last_name,car
order by total_donation desc
limit 10;
