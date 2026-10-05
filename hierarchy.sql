-- Рекурсивно: кто под кем
WITH RECURSIVE tree(id,name,manager_id,lvl) AS (
    SELECT id,name,manager_id,0 FROM employees WHERE manager_id IS NULL
    UNION ALL
    SELECT e.id,e.name,e.manager_id,t.lvl+1
    FROM employees e JOIN tree t ON e.manager_id=t.id
)
SELECT lvl, name FROM tree ORDER BY lvl;
