
  create or replace   view stock_db.analytics.my_second_dbt_model
  
   as (
    -- Use the `ref` function to select from other models

select *
from stock_db.analytics.my_first_dbt_model
where id = 1
  );

