select
    cast(item_id as int) as order_item_id,
    cast(order_id as int) as order_id,
    cast(product_id as int) as product_id,
    list_price as order_item_price,
    cast(quantity as int) as order_item_quantity,
    discount as order_item_discount
from {{ source('local_bike', 'order_items') }}