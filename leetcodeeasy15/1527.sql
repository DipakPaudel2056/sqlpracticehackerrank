-- the problem to find the diabetics patients 
SELECT * FROM patients
WHERE Conditions LIKE 'DIAB1%' OR Conditions LIKE '% DIAB1%';