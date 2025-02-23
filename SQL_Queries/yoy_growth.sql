SELECT 
    u1.CREATED_YEAR AS year,
    COUNT(u1.ID) AS current_year_users,
    (SELECT COUNT(u2.ID)
     FROM users u2
     WHERE u2.CREATED_YEAR = u1.CREATED_YEAR - 1) AS previous_year_users,
    (CAST(COUNT(u1.ID) AS FLOAT) - (SELECT COUNT(u2.ID)
                                    FROM users u2
                                    WHERE u2.CREATED_YEAR = u1.CREATED_YEAR - 1)) 
    / NULLIF((SELECT COUNT(u2.ID)
              FROM users u2
              WHERE u2.CREATED_YEAR = u1.CREATED_YEAR - 1), 0) * 100 AS yoy_growth_percent
FROM users u1
GROUP BY u1.CREATED_YEAR
ORDER BY u1.CREATED_YEAR