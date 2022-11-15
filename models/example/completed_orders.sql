{{ config(materialized='table') }}

select (o.id) as
order_id,o.order_date,o.status,c.first_name,c.last_name
from raw.jaffle_shop.orders o
left join raw.jaffle_shop.customers c
on o.status = 'completed'