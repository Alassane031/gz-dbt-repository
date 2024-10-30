SELECT 
    date_date,
    (finance.operational_margin - campaign.ads_cost) AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_click,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost
FROM {{ref("int_campaigns_day")}} AS campaign 
LEFT JOIN {{ref("finance_days")}} AS finance
USING (date_date)
ORDER BY date_date DESC