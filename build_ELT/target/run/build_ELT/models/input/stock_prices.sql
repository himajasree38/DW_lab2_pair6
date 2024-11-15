
  create or replace   view stock_db.analytics.stock_prices
  
   as (
    SELECT
    "open",
    "high",
    "low",
    "close",
    "volume",
    "date",
    "symbol"
FROM stock_db.raw_data.stock_prices
  );

