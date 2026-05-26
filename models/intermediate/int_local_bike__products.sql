select
    p.product_name,
    c.category_name,
    b.brand_name,
    p.product_price,
    p.product_model_year
from {{ ref('stg_local_bike__products') }} as p
    left join {{ ref('stg_local_bike__categories') }} as c on p.category_id = c.category_id
    left join {{ ref('stg_local_bike__brands') }} as b on p.brand_id = b.brand_id