WITH activity_gaps AS (
    SELECT
        user_id,
        activity_date,
        LAG(activity_date) OVER (
            PARTITION BY user_id
            ORDER BY activity_date
        ) AS previous_activity,
        DATE_DIFF(
            'day',
            LAG(activity_date) OVER (
                PARTITION BY user_id
                ORDER BY activity_date
            ),
            activity_date
        ) AS inactive_days
    FROM user_activity
)

SELECT
    user_id,
    MAX(inactive_days) AS max_inactive_gap,
    CASE
        WHEN MAX(inactive_days) >= 30 THEN 'Re-engaged User'
        ELSE 'Regular User'
    END AS user_status
FROM activity_gaps
GROUP BY user_id;
