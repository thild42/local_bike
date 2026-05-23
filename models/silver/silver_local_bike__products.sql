select
    cast(product_id as int) as product_id,
    cast(category_id as int) as category_id,
    cast(brand_id as int) as brand_id,
    product_name,
    list_price as product_price,
    cast(model_year as int) as product_model_year
from {{ source('local_bike', 'products') }}



