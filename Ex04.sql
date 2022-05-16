-- ////////////////////////////
-- SUB QUERY
-- /////////////////////////////

-- 조건이 2개 이상 일 때 아래처럼 표시
-- Den보다 급여를 많이 받는 사람의 이름은?
SELECT first_name
       ,salary
FROM employees
WHERE salary > (SELECT salary
                FROM employees
                WHERE first_name = 'Den');

-- 같지 않다는 <> 로 표시

-- 급여를 가장 적게 받는 사람의 이름, 급여, 사원번호는?
SELECT first_name
       ,salary
       ,employee_id
FROM employees
WHERE salary = (SELECT MIN(salary)
                FROM employees);
                
-- 평균 급여보다 적게 받는 사람의 이름, 급여를 출력하세요
SELECT first_name
       ,salary
FROM employees
WHERE salary < (SELECT AVG(salary)
                FROM employees);

-- 부서번호가 110인 직원의 급여와 같은 모든 직원의 사번, 이름, 급여를 출력하세요  
-- 다중행 SUB QUERY
SELECT employee_id
       ,first_name
       ,salary
FROM EMPLOYEES
WHERE salary IN (12008, 8300);

SELECT employee_id
       ,first_name
       ,salary
FROM EMPLOYEES
WHERE salary IN (SELECT salary
                 FROM employees
                 WHERE department_id = 110);
-- IN 을 사용하면 해당하는 데이터를 모두 찾음

