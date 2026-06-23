with raw_listings as (
    Select * from AIRBNB.RAW.RAW_LISTINGS
)
select 
    id as listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price as price_str,
    created_at,
    updated_at,
From
    raw_listings