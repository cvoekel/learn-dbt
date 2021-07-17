with orders as (
    select * from {{ ref('stg_orders') }}
),

pivoted as (
    select
        order_id as id_xxs,
        order_date,
        status,
        customer_id as Carter,
    from orders
    where status = 'placed'
    group by 1, order_date, customer_id, order_id, status
    order by Carter
)

select * from pivoted