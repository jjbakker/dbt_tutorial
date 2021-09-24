with customers as (
    select * from {{ ref('dim_customers')}}
),
orders as (
    select * from {{ ref('stg_orders')}}
),
payment as (
    select * from {{ ref('stg_payments')}}
)
select orders.order_id,
       customers.customer_id,
       amount
from customers 
join orders on (customers.customer_id = orders.customer_id)
join payment on (payment.orderid = orders.order_id)


