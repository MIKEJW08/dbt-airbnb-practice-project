select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT 
    *
FROM AIRBNB.DEV.fct_reviews r 
LEFT JOIN AIRBNB.DEV.dim_listings_cleansed l  ON r.listing_id = l.listing_id 
WHERE r.review_date <= l.created_at
      
    ) dbt_internal_test