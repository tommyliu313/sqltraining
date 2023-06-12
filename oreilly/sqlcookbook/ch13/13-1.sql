SELECT a.ename || 'works for' || b.ename as emps_and_mgrs
FROM emp a, emp b
WHERE a.mgr = b.empno