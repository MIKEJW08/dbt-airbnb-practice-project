
WITH  __dbt__cte__src_hosts as (
WITH raw_hosts AS (
    SELECT
        *
    FROM AIRBNB.raw.raw_hosts
)
SELECT
    ID AS host_id,
    NAME AS host_name,
    IS_SUPERHOST,
    CREATED_AT,
    UPDATED_AT
FROM raw_hosts
),src_hosts AS (
    SELECT 
        *
    FROM __dbt__cte__src_hosts
)
SELECT  
    host_id,
    CASE WHEN host_name IS NULL THEN 'Anonymous'
         ELSE host_name 
    END AS host_name,
    IS_SUPERHOST,
    created_at,
    updated_at
FROM src_hosts