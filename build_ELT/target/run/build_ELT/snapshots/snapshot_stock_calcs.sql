
      
  
    

        create or replace transient table stock_db.snapshot.snapshot_stock_calcs
         as
        (
    

    select *,
        md5(coalesce(cast(DATE as varchar ), '')
         || '|' || coalesce(cast(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as varchar ), '')
        ) as dbt_scd_id,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_updated_at,
        to_timestamp_ntz(convert_timezone('UTC', current_timestamp())) as dbt_valid_from,
        
  
  coalesce(nullif(to_timestamp_ntz(convert_timezone('UTC', current_timestamp())), to_timestamp_ntz(convert_timezone('UTC', current_timestamp()))), null)
  as dbt_valid_to

    from (
        



SELECT 
    DATE,
    SYMBOL,
    MOVING_AVG_7D,
    RSI_14D
FROM stock_db.analytics.stock_calcs

    ) sbq



        );
      
  
  