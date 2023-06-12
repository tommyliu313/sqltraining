SELECT
SUM(CASE WHEN deptno=10 then 1 else 0 end) as deptno_10,
SUM(CASE WHEN deptno=20 then 1 else 0 end) as deptno_20,
SUM(CASE WHEN deptno=30 then 1 else 0 end) as deptno_30
FROM emp