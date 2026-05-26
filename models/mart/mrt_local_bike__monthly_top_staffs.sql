select
    concat(s.staff_first_name, ' ', s.staff_last_name) as staff_name,
    date_trunc('month', o.order_placed_at) as month,
    sum(o.order_total_price) as total_price
from {{ ref('int_local_bike__completed_orders_with_total_price') }} as o
    left join {{ ref('stg_local_bike__staffs') }} as s on o.staff_id = s.staff_id
group by
    s.staff_id,
    concat(s.staff_first_name, ' ', s.staff_last_name),
    date_trunc('month', o.order_placed_at)