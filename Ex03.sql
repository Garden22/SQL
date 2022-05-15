-- ///Join/////////////////////////////////////
--/////////////////////////////////////////////

SELECT employee_id
       ,first_name
       ,salary
       ,department_id
FROM employees;

-- 테이블 두개를 표현해달라고 할 때 > 가능한 모든 쌍 추출
SELECT *
FROM employees, departments;


SELECT employee_id
       ,first_name
       ,department_name
       ,salary
       ,em.department_id "e_dept id"
       ,de.department_id "d_dept id"
FROM employees em, departments de -- 이름 정해주기
WHERE em.department_id = de.department_id; -- ***

-- 모든 직원이름, 부서이름, 업무명 을 출력하세요
SELECT e.first_name 이름
       ,d.department_name 부서이름
       ,j.job_title 업무명
FROM employees e, departments d, jobs j
WHERE e.department_id = d.department_id 
AND e.job_id = j.job_id;


SELECT e.first_name 이름
       ,d.department_name 부서이름
       ,j.job_title 업무명
       ,e.salary 월급
FROM employees e, departments d, jobs j
WHERE e.department_id = d.department_id 
AND e.job_id = j.job_id
AND e.salary >= 7000
ORDER BY d.department_name ASC, salary DESC;