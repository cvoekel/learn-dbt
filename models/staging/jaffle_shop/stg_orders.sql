with orders as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from `dbt-tutorial`.jaffle_shop.orders

)
Select * from orders
{{ limit_data_in_dev() }}
