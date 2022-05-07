select
	product_name
from
	product;
-- Frame: create a partition/window apply function into this window. subset of window
-- first_value(args): display most expensive product under each category
select
	p.*,
	first_value(p.product_name) over(partition by p.product_category
order by
	p.price desc) as most_exp_product
from
	product p;
-- last_value(args): display least expensive product under each category

select
	p.*,
	last_value(p.product_name) over(partition by p.product_category
order by
	p.price desc range between unbounded preceding and unbounded following) as least_emp_product
from
	product p;
-- alternate ways too write window function, cte(common table expression)
with em as (
select
	p.*,
	first_value(p.product_name) over w as most_exp_product,
	last_value(p.product_name) over w as least_emp_product,
	nth_value(p.product_name, 2) over w as second_exp_product
from
	product p
window w as (partition by p.product_category
order by
	p.price desc range between unbounded preceding and unbounded following)
)
select
	*
from
	em;
	
-- nth_value(args)
select
	p.*,
	nth_value(p.product_name, 2) over(partition by p.product_category
order by
	p.price desc) as second_exp_product
from
	product p;

-- ntile(args)
select
	product_name,
	case
		when x.buckets = 1 then 'Expensive'
		when x.buckets = 2 then 'Mid Range'
		when x.buckets = 3 then 'Cheaper'
	end phone_type
from
	(
	select
		p.*,
		ntile(3) over(
	order by
		p.price desc) as buckets
	from
		product p
	where
		p.product_category = 'Phone'
	) as x;