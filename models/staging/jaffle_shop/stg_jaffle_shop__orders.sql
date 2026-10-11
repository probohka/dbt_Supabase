select
    id as order_id,
    user_id as customer_id,
    order_date,
    status,
    {{ add_etl_timestamp_local() }}

from {{ source('jaffle_shop', 'orders') }}
