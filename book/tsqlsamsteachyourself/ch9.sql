--ch9-1
SELECT Person.BusinessEntityID,
    FirstName, LastName, PhoneNumber
    FROM Person.Person
    FULL JOIN Person.PersonPhone
    ON Person.BusinessEntityID = PersonPhone.BusinessEntityID

--ch9-2
SELECT Employee.BusinessEntityID,
    EmployeeInfo.FirstName AS EmployeeFName,
    EmployeeInfo.FirstName AS EmployeeFName,
    Supervisor.FirstName AS SupervisorFName,
    Supervisor.LastName AS SupervisorLName
    FROM HumanResources.Employee AS Supervisor INNER JOIN
        HumanResources.Employee AS Employee
        ON Supervisor.BusinessEntityID = Employee.SupervisorID INNER JOIN
        Person.PersonID