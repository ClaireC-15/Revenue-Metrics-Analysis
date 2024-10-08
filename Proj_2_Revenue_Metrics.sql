SELECT 
    g.user_id, 
    g.game_name, 
    g.language, 
    g.has_older_device_model, 
    g.age, 
    p.payment_date, 
    p.revenue_amount_usd
FROM 
    games_paid_users g
JOIN 
    games_payments p
ON 
    g.user_id = p.user_id AND g.game_name = p.game_name;