--EXTRACT(month from date_date) as date_month
--GROUP BY date_month

SELECT 
    EXTRACT(month from date_date) as date_month,
    SUM(ads_margin) as total_ads_margin,
    AVG(average_basket) as avg_basket,
    SUM(operational_margin) as total_operational_margin,
    SUM(ads_cost) as total_ads_cost,
    SUM(ads_impression) as total_ads_impressions,
    SUM(ads_click) as total_ads_clicks,
    SUM(quantity) as total_quantity,
    SUM(revenue) as total_revenue,
    SUM(purchase_cost) as total_purchase_cost,
    SUM(margin) as total_margin,
    SUM(shipping_fee) as total_shipping_fee,
    SUM(logcost) as total_logcost,
    SUM(ship_cost) as total_ship_cost
FROM {{ref("finance_campaigns_day")}}
GROUP BY date_month
ORDER BY date_month DESC
