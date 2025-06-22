-- here we are trying to find the product that were sold in between the given date range 
select p.product_id,p.product_name
from Product p
join Sales s on p.product_id = s.product_id
group by s.product_id
having min(s.sale_date) >= "2019-01-01"
and max(s.sale_date) <= "2019-03-31";