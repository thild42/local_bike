select
    cast(customer_id as int) as customer_id,
    first_name as customer_first_name,
    last_name as customer_last_name,
    email as customer_email,
    phone as customer_phone,
    street as customer_street,
    cast(zip_code as int) as customer_zip_code,
    city as customer_city,
    state as customer_state
from {{ source('local_bike', 'customers') }}