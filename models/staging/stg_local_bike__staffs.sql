select
    cast(staff_id as int) as staff_id,
    cast(manager_id as int) as manager_id,
    cast(store_id as int) as store_id,
    first_name as staff_first_name,
    last_name as staff_last_name,
    email as staff_email,
    phone as staff_phone,
    active as staff_active
from {{ source('local_bike', 'staffs') }}



