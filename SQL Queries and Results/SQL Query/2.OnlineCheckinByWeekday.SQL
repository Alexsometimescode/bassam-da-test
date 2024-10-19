DROP VIEW IF EXISTS OnlineCheckinByWeekday;

CREATE VIEW OnlineCheckinByWeekday AS
SELECT 
    DAYNAME(res.CreatedUtc) AS Weekday,
    res.IsOnlineCheckin,
    res.AgeGroup,
    res.Gender,
    res.NationalityCode,
    COUNT(res.RateId) AS TotalOnlineCheckins
FROM 
    reservations res
WHERE 
    res.IsOnlineCheckin = 1  -- Only count reservations with online check-in
GROUP BY 
    Weekday, res.IsOnlineCheckin, res.AgeGroup, res.Gender, res.NationalityCode
ORDER BY 
    Weekday + 1;
