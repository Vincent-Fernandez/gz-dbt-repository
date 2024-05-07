with purchase_cost as (

    select
        *,
        (quantity*purchase_price) as purchase_cost,
        revenue - (quantity*purchase_price) as margin
    from {{ ref('stg_raw__raw_sales') }} sales left join {{ ref('stg_raw__raw_product') }} product using(products_id)
)
select 
    *
from purchase_cost