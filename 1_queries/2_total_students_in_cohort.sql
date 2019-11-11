SELECT
  COUNT(*) as count
FROM students
WHERE
  cohort_id IN (1, 2, 3);