DROP VIEW IF EXISTS AvgNightRevenuePerCapacityBySegment;

CREATE VIEW AvgNightRevenuePerCapacityBySegment AS
SELECT 
	res.NationalityCode,
    round(AVG(CASE WHEN res.OccupiedSpace_Sum > 0 
             THEN res.NightCost_Sum / res.OccupiedSpace_Sum 
             ELSE 0 END),1) AS AvgNightRevenuePerCapacity
FROM 
    reservations res
GROUP BY 
		res.NationalityCode
ORDER BY 
    AvgNightRevenuePerCapacity DESC;