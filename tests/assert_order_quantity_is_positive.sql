select
    order_item_id,
    sum(order_item_quantity) as total_quantity
from {{ ref('stg_local_bike__order_items') }}
group by order_item_id
having sum(order_item_quantity) < 0