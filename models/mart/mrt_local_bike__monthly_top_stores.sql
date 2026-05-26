select
    concat(s.store_name, '(', s.store_city, ')') as store_name_city,
    date_trunc('month', o.order_placed_at) as month,
    sum(o.order_total_price) as total_price
from {{ ref('int_local_bike__completed_orders_with_total_price') }} as o
    left join {{ ref('stg_local_bike__stores') }} as s on o.store_id = s.store_id
group by
    s.store_id,
    concat(s.store_name, '(', s.store_city, ')'),
    date_trunc('month', o.order_placed_at)