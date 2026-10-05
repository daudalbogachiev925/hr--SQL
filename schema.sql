CREATE TABLE departments (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE employees (
    id INTEGER PRIMARY KEY, name TEXT, dept_id INTEGER,
    manager_id INTEGER, salary REAL, hired DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(id));
