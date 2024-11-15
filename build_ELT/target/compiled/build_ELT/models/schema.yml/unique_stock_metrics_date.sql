
    
    

select
    date as unique_field,
    count(*) as n_records

from stock_db.analytics_analytics.stock_metrics
where date is not null
group by date
having count(*) > 1


