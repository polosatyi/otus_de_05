with order_items as (

    select * from {{ ref('stg_order_items') }}

),

final as (

    select
        order_items.item_id as item_id,
        count(order_id) as total_orders

    from order_items

    group by 1

)

select * from final
