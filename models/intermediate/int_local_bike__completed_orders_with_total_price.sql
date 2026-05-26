select
    o.order_id,
    o.customer_id,
    o.staff_id,
    o.store_id,
    o.order_placed_at,
    sum((oi.order_item_quantity * oi.order_item_price) * (1 - oi.order_item_discount)) as order_total_price
from {{ ref('stg_local_bike__orders') }} o
  left join {{ ref('stg_local_bike__order_items') }} oi on o.order_id = oi.order_id
where
    o.order_status = 'Completed'
group by
    o.order_id, o.customer_id, o.staff_id, o.store_id, o.order_placed_at