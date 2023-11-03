{{
    config(
        materialized = 'view'
    )
}}
WITH src_hosts AS (
    SELECT 
        *
    FROM {{ ref('src_hosts') }}
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