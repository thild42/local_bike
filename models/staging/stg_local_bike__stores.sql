select
    cast(store_id as int) as store_id,
    store_name,
    email as store_email,
    phone as store_phone,
    street as store_street,
    cast(zip_code as int) as store_zip_code,
    city as store_city,
    state as store_state
from {{ source('local_bike', 'stores') }}
