with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_items') }}

),

renamed as (

    select
        id as item_id,
        title as item_title,
        price as item_price

    from source

)

select * from renamed
