
CREATE TABLE Employee(
    id INT PRIMARY KEY NOT NULL,
    name_last VARCHAR(255) NOT NULL,
    name_first VARCHAR(255) NOT NULL,
    deptID INT NOT NULL,
    FOREIGN KEY(deptID) REFERENCES Department(id)
);