SELECT max(CASE WHEN job='CLERK' then ename else null end) as clerks,
       max(CASE WHEN job='ANALYST' then ename else null end) as analysts,
       max(CASE WHEN job='MANAGER' then ename else null end) as mgrs,
       max(CASE WHEN job='MANAGER' then ename else null end) as 