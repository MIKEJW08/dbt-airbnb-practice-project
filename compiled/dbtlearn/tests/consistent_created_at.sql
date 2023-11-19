SELECT 
    *
FROM AIRBNB.DEV.fct_reviews r 
LEFT JOIN AIRBNB.DEV.dim_listings_cleansed l  ON r.listing_id = l.listing_id 
WHERE r.review_date <= l.created_at