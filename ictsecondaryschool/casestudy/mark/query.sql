SELECT name, English + Chinese + Maths as total,
       (English + Chinese + Maths) / 3 as average FROM Mark

Update MARK Set Average=(English + Chinese + Maths)/3

SELECT name FROM Mark where name like 'W%'

SELECT name FROM Mark where name like '___'

SELECT name FROM Mark where name like '%han'

SELECT name FROM Mark where name like '%org%'

SELECT name FROM Mark where name like '%q%' or '%Q%'