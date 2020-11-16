with items as (

    select * from {{ ref('stg_items') }}

),

order_items as (

    select * from {{ ref('order_items') }}

),

final as (

    select
        items.item_id,
        items.item_title,
        order_items.total_orders

    from items

    left join order_items using (item_id)

)

select * from final
