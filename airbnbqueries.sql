--What's the most expensive listing? What else can you tell me about the listing?

select 
	* 
from
	listings
where 
	price = (select max(price) from listings)

--What neighborhoods seem to be the most popular?

select 
	neighbourhood, count(id) as num_listings 
from 
	listings 
group by 
	neighbourhood 
order by 
	num_listings desc

--What time of year is the cheapest time to go to your city? What about the busiest?

