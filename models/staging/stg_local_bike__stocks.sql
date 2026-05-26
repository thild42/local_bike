select
    cast(product_id as int) as product_id,
    cast(store_id as int) as store_id,
    cast(quantity as int) as staff_quantity
from {{ source('local_bike', 'stocks') }}