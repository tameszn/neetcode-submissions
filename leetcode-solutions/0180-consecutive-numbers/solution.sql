WITH cte AS
(
    SELECT
        *,
        LEAD(num,1) OVER(ORDER BY id) AS next_1,
        LEAD(num,2) OVER(ORDER BY id) AS next_2
    FROM Logs
)

SELECT DISTINCT
    num AS ConsecutiveNums
FROM cte
WHERE next_1 = num AND next_2 = num
