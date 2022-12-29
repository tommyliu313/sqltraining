CREATE INDEX idx_name ON t(c1,c2);

CREATE UNIQUE INDEX idx_name
ON t(c3,c4);

CREATE INDEX empIdIdx ON employee(emp_id);
CREATE INDEX empTitleIdx ON employee(title);
CREATE INDEX empNameIdx ON employee(lastname, firstname);
CREATE INDEX empSalIdx ON employee(salary DESC);