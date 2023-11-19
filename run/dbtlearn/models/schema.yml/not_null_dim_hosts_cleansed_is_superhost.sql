select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select is_superhost
from AIRBNB.DEV.dim_hosts_cleansed
where is_superhost is null



      
    ) dbt_internal_test