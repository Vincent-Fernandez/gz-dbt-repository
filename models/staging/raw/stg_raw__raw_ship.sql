with 

source as (

    select * from {{ source('raw', 'raw_ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logCost as log_cost,
        cast(ship_cost as float64) as ship_cost

    from source

)

select * from renamed
