select
    concat(c.customer_first_name, ' ', c.customer_last_name) as customer_name,
    date_trunc('month', o.order_placed_at) as month,
    sum(o.order_total_price) as total_price
from {{ ref('int_local_bike__completed_orders_with_total_price') }} as o
    left join {{ ref('stg_local_bike__customers') }} as c on o.customer_id = c.customer_id
group by
    o.customer_id,
    concat(c.customer_first_name, ' ', c.customer_last_name),
    date_trunc('month', o.order_placed_at)