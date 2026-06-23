WITH src_reviews AS (
    Select * FROM AIRBNB.RAW.RAW_REVIEWS
)
SELECT 
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment as review_sentiment
FROM src_reviews