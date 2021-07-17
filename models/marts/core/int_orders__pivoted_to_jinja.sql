with orders as (
    select * from {{ ref('stg_orders') }}
),
// below is not a correct for loop //
pivoted as (
    select
        order_id

        {%set customers_x = ['order_id'] %}

        {% for customer_id in customers_x %}

        where customer_id > 50

        {% endfor %}

    from orders
    where status = 'placed' and customer_id > 50
    group by order_id, order_date
)

select * from pivoted