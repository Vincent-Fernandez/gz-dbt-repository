
    select
        *,
        (margin - log_cost - ship_cost + shipping_fee) as operational_margin
    from {{ ref('int_orders_margin') }} left join {{ ref('stg_raw__raw_ship') }} using(orders_id)
