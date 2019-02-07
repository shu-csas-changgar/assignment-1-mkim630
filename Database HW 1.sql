# 1.)
select * from actor
where first_name like 'Penelope';

# 2.)
select first_name, last_name, title from actor, film_actor, film
where actor.actor_id = film_actor.actor_id 
and film_actor.film_id = film.film_id and title  = 'zoolander fiction';

# 3.) 
select first_name, last_name, film_id from actor, film_actor
where actor.actor_id = film_actor.actor_id and first_name = "Jennifer" and last_name = "Davis";

# 4.)
select film.title from customer, rental, film, inventory
where 
	film.film_id = inventory.film_id
and inventory.store_id = customer.store_id
and customer.customer_id = rental.customer_id
and rental.inventory_id = inventory.inventory_id
and customer.customer_id = 11
and first_name = 'Lisa'
and last_name = 'Anderson';

#5
select title from film_category, category, film
where
	film_category.category_id = category.category_id and 
	category.name = 'Animation'	and
    film_category.film_id = film.film_id;

#6
select distinct amount from payment, customer, inventory, film
where 	
	payment.customer_id = customer.customer_id and
	customer.store_id = inventory.store_id and
	inventory.film_id = film.film_id and 
	film.title = 'Closer Bang'  and
	customer.first_name = 'Paula' and
	customer.last_name = 'Bryant' and 
	customer.customer_id = 95;

#7
select s.first_name, s.last_name from staff as s, inventory, rental, customer, film
where 
	s.store_id = inventory.store_id and 
    inventory.inventory_id = rental.inventory_id and 
    rental.customer_id = customer.customer_id and
    customer.first_name = 'Marie' and
    customer.last_name = 'Turner' and
    inventory.film_id = film.film_id and
    film.title = 'Chainsaw Uptown' and
    rental.staff_id = s.staff_id;
