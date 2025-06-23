-- here we were given the table that has the date and the partners and lead details for the respective car make 
-- we want to find the total number of partners and the leads each car make is getting every single day
select
    date_id,
    make_name,
    count(distinct lead_id) as unique_leads,
    count(distinct partner_id) as unique_partners
from
    DailySales
group by
    date_id,
    make_name;