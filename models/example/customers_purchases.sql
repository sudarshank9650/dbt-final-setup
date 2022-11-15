{{ config(materialized='table') }}

select c.id,c.first_name,c.last_name,o.order_date,o.status
from raw.jaffle_shop.customers c
left join raw.jaffle_shop.orders o
on c.id = o.user_id