SELECT name, English + Chinese + Maths as total,
       (English + Chinese + Maths) / 3 as average FROM Mark

Update MARK Set Average=(English + Chinese + Maths)/3