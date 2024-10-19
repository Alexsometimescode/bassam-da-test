DROP VIEW IF EXISTS EstimatedOnlineRevenue;

CREATE VIEW EstimatedOnlineRevenue AS
SELECT 
    DAYNAME(res.CreatedUtc) AS Weekday,  -- Extract day of the week (e.g., Monday)
    ROUND(SUM(CASE 
                WHEN res.IsOnlineCheckin = 1 
                THEN res.NightCost_Sum  -- Only sum room costs for reservations with online check-in
                ELSE 0 
              END), 1) AS CurrentRevenue,  -- Current total revenue for online check-ins
    ROUND(SUM(CASE 
                WHEN res.IsOnlineCheckin = 1 
                THEN res.NightCost_Sum * 2  -- Apply the multiplier of 2 for online check-ins
                ELSE 0
              END), 1) AS EstimatedRevenue  -- Estimated revenue with doubled online check-ins
FROM 
    reservations res
GROUP BY 
    Weekday
ORDER BY 
    FIELD(Weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');  -- Ensure correct order of days

