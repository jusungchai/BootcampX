SELECT
  cohorts.name as cohort,
  SUM(
    assistance_requests.completed_at - assistance_requests.started_at
  ) as total_duration
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY
  cohort
ORDER BY
  total_duration