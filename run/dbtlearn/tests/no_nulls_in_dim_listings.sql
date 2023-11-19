select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
SELECT 
        *
    FROM AIRBNB.DEV.dim_listings_cleansed 
    WHERE 
    
        SnowflakeColumn(column='LISTING_ID', dtype='NUMBER', char_size=None, numeric_precision=38, numeric_scale=0) IS NULL OR 
    
        SnowflakeColumn(column='LISTING_NAME', dtype='VARCHAR', char_size=16777216, numeric_precision=None, numeric_scale=None) IS NULL OR 
    
        SnowflakeColumn(column='ROOM_TYPE', dtype='VARCHAR', char_size=16777216, numeric_precision=None, numeric_scale=None) IS NULL OR 
    
        SnowflakeColumn(column='MINIMUM_NIGHTS', dtype='NUMBER', char_size=None, numeric_precision=38, numeric_scale=0) IS NULL OR 
    
        SnowflakeColumn(column='HOST_ID', dtype='NUMBER', char_size=None, numeric_precision=38, numeric_scale=0) IS NULL OR 
    
        SnowflakeColumn(column='PRICE', dtype='NUMBER', char_size=None, numeric_precision=10, numeric_scale=2) IS NULL OR 
    
        SnowflakeColumn(column='CREATED_AT', dtype='TIMESTAMP_NTZ', char_size=9, numeric_precision=None, numeric_scale=None) IS NULL OR 
    
        SnowflakeColumn(column='UPDATED_AT', dtype='TIMESTAMP_NTZ', char_size=9, numeric_precision=None, numeric_scale=None) IS NULL OR 
    
    FALSE

      
    ) dbt_internal_test