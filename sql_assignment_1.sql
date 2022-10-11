--SQL Assignment 1

-- Two of the outputs don't match what was posted on google classroom exactly. Question #2 mainly, the 'payment' table
-- seems to have been edited a bunch and it's affecting the query, but structure of queries should be solid  


-- Question #1:
select COUNT(last_name)
from actor
where last_name = 'Wahlberg'

-- Question #2:
select COUNT(amount)
from payment
where amount between 3.99 and 5.99;

-- Question #3:
select film_id, COUNT(film_id)
from inventory
group by film_id
order by COUNT(film_id) desc;


-- Question #4:
select COUNT(last_name)
from customer
where last_name = 'William';

-- Question #5:
select staff_id, COUNT(staff_id)
from rental
group by staff_id
order by COUNT(staff_id) desc;

-- Question #6:
select COUNT(distinct district)
from address;

--Question #7:
select film_id, COUNT(film_id)
from film_actor
group by film_id 
order by COUNT(film_id) desc;

--Question #8:
select COUNT(last_name)
from customer
where store_id = 1 and last_name like '%es';

--Question #9:
select amount, COUNT(amount)
from payment
where customer_id between 380 and 430
group by amount
having COUNT(amount) > 250
order by COUNT(amount) desc;

--Question #10
select distinct rating, count(rating)
from film
group by rating
order by COUNT(rating) desc;
