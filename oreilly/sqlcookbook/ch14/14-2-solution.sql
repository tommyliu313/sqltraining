SELECT DNAME, CNT
FROM (
    SELECT  [ACCOUNTING] as ACCOUNTING,
            [SALES] as SALES,
            [RESEARCH] as RESEARCH,
            [OPERATIONS] as OPERATIONS
    FROM (
        SELECT d.dname, e.empno
        FROM emp w, dept d
        WHERE e.deptno = d.deptno
    ) driver
    pivot(

    ) as empPivot
)