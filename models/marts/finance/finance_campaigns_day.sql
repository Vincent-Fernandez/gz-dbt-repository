select 
    * ,
    (operational_margin- ads_cost) as  ads_margin
from {{ref('finance_days')}} join {{ref('int_campaigns_day')}}
    using(date_date)