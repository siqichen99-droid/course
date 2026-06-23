WITH l AS (
    Select * from {{ ref('dim_listings_cleansed') }}
),
h As (
    Select * from {{ ref('dim_hosts_cleansed') }}
)

SELECT 
    l.listing_id,
    l.listing_name,
    l.room_type,
    l.minimum_nights,
    l.price,
    h.host_id,
    h.host_name,
    h.is_superhost As host_is_superhost,
    l.created_at,
    greatest(l.updated_at, h.updated_at) As updated_dt
FROM l
LEFT JOIN h
    ON l.host_id = h.host_id