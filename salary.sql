-- Средняя ЗП по отделам
SELECT d.name, AVG(e.salary) AS avg_s, COUNT(*) AS n
FROM employees e JOIN departments d ON e.dept_id=d.id
GROUP BY d.id ORDER BY avg_s DESC;

-- Отклонение от средней по отделу
SELECT name, salary, dept_id,
  salary - (SELECT AVG(salary) FROM employees e2 WHERE e2.dept_id=e1.dept_id) AS diff
FROM employees e1;
