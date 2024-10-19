DROP VIEW IF EXISTS PopularBookingRatesBySegment;

CREATE VIEW PopularBookingRatesBySegment AS
SELECT 
    r.ShortRateName, 
    res.AgeGroup,
    res.Gender,
    res.NationalityCode,
    COUNT(res.RateId) AS TotalReservations
FROM 
    reservations res
JOIN 
    rates r ON res.RateId = r.RateId
GROUP BY 
    r.ShortRateName, 
    res.AgeGroup, 
    res.Gender, 
    res.NationalityCode
ORDER BY 
    TotalReservations DESC;
