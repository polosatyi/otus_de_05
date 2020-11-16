with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_order_items') }}

),

renamed as (

    select
        id as order_item_id,
        order_id,
        item_id

    from source

)

select * from renamed
