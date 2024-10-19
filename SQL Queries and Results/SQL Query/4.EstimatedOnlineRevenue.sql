DROP VIEW IF EXISTS EstimatedOnlineRevenue;

CREATE VIEW EstimatedOnlineRevenue AS
SELECT 
    DAYNAME(res.CreatedUtc) AS Weekday,  
    ROUND(SUM(CASE 
                WHEN res.IsOnlineCheckin = 1 
                THEN res.NightCost_Sum  
                ELSE 0 
              END), 1) AS CurrentRevenue,  
    ROUND(SUM(CASE 
                WHEN res.IsOnlineCheckin = 1 
                THEN res.NightCost_Sum * 2  
                ELSE 0
              END), 1) AS EstimatedRevenue  
FROM 
    reservations res
GROUP BY 
    Weekday
ORDER BY 
    FIELD(Weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');  -- Ensure correct order of days

