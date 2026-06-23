{{
config(
    materialized='view'
)
}}

WITH src_listings AS (
    Select * from {{ ref('src_listings') }}
)
Select 
    listing_id,
    listing_name,
    room_type,
    CASE
        when minimum_nights = 0 then 1
        else minimum_nights
    end as minimum_nights,
    host_id,
    Replace(
        price_str, '$'
    ) :: Number(10,2) as price,
    created_at,
    updated_at
From
    src_listings