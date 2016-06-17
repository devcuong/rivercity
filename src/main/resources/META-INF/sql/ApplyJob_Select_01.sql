SELECT *
FROM employee_apply_job
INNER JOIN career ON employee_apply_job.career_id = career.career_id
INNER JOIN employer ON career.employer_id = employer.employer_id
WHERE employee_id = :employeeId