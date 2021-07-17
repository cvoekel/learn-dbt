with payments as (

    select
        id,
        orderid,
        paymentmethod,
        status,
        created

    from dbt-tutorial.stripe.payment

)
Select * from payments