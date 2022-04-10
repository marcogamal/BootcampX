SELECT cohorts.name as cohort_name, count(students) as student_count 
FROM cohorts 
JOIN students ON cohorts.id = cohort_id 
GROUP BY cohorts.name 
HAVING count(students) > 17 
ORDER BY count(students);