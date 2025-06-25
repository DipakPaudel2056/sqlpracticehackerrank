-- here the task is just to rank the score based on the highest score as 1 and there should not be any gap in the rank
WITH
    CTE AS (
        SELECT
            score,
            DENSE_RANK() OVER (
                ORDER BY
                    score DESC
            ) AS rank
        FROM
            Scores
    )
SELECT
    score,
    rank
from
    CTE;