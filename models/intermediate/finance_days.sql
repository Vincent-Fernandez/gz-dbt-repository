
    select
        date_date,
        count(distinct orders_id) as nb_transactions,
        sum(revenue) as revenue,
        avg(revenue) as avg_basket,
        sum(margin) as margin,
        sum(operational_margin) as operational_margin
    from {{ ref('int_orders_operational') }} 
    group by
        date_date