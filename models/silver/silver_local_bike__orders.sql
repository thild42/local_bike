select
    cast(order_id as int) as order_id,
    cast(order_id as int) as customer_id,
    cast(order_id as int) as staff_id,
    cast(order_id as int) as store_id,
    order_date as order_placed_at,
    required_date as order_required_at,
    shipped_date as order_shipped_at,
    (case order_status when 1 then 'Pending' when 2 then 'Processing' when 3 then 'Rejected' when 4 then 'Completed' end) as order_status
from {{ source('local_bike', 'orders') }}



