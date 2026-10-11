select id as customer_id, first_name, last_name, {{ add_etl_timestamp_local() }}

from {{ source('jaffle_shop', 'customers') }}
