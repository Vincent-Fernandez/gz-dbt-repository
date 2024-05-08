with purchase_cost_table as (

    select
        *,
        (quantity*purchase_price) as purchase_cost,
        revenue - (quantity*purchase_price) as margin
    from {{ ref('stg_raw__raw_sales') }} sales left join {{ ref('stg_raw__raw_product') }} product using(products_id)
)

select 
    *,
    {{ margin_percent('revenue', 'purchase_cost') }} as margin_percent
from purchase_cost_table