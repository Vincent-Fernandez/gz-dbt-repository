with 

source as (

    select * from {{ source('raw', 'raw_sales') }}

),

renamed as (

    select 
        date_date,
        orders_id,
        pdt_id as products_id,
        orders_id || '-' || pdt_id as pk,
        revenue,
        quantity

    from source

)

select * from renamed
