SELECT
  x.teacher,
  x.cohort,
  COUNT(*) as total_assistances
FROM (
    SELECT
      teachers.name as teacher,
      cohorts.name as cohort
    FROM teachers
    JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
    JOIN students ON assistance_requests.student_id = students.id
    JOIN cohorts ON students.cohort_id = cohorts.id
    WHERE
      cohorts.name = 'JUL02'
  ) x
GROUP BY
  x.teacher,
  x.cohort
ORDER BY
  x.teacher