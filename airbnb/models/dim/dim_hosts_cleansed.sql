{{
config(
    materialized='view'
)
}}
WITH src_host as (
    Select * from {{ ref('src_hosts') }}
)
SELECT 
    host_id,
    nvl(host_name, 'Anonymous') as host_name,
    is_superhost,
    created_at,
    updated_at
From
    src_host