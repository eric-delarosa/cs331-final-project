
--@block
CREATE TABLE IF NOT EXISTS Medication(
    tradeName VARCHAR(255) PRIMARY KEY NOT NULL,
    stock INT NOT NULL,
    treats TEXT NOT NULL,
    formula VARCHAR(255) NOT NULL,
    sideEffects TEXT NOT NULL
);

--@block
CREATE TABLE IF NOT EXISTS Department(
    deptID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dName VARCHAR(255) NOT NULL
);

--@block
CREATE TABLE IF NOT EXISTS Employee(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nameFirst VARCHAR(255) NOT NULL,
    nameLast VARCHAR(255) NOT NULL,
    deptID INT NOT NULL,
    FOREIGN KEY (deptID) REFERENCES Department(deptID)
);

--@block
CREATE TABLE IF NOT EXISTS Staff(
    id INT REFERENCES Employee(id),
    nameLast VARCHAR(255) REFERENCES Employee(nameLast),
    nameFirst VARCHAR(255) REFERENCES Employee(nameFirst),
    deptID INT REFERENCES Employee(deptID),
    position VARCHAR(255) NOT NUll,
    PRIMARY KEY (id)
);

--@block
CREATE TABLE IF NOT EXISTS Nurse(
    id INT REFERENCES Employee(id),
    nameLast VARCHAR(255) REFERENCES Employee(nameLast),
    nameFirst VARCHAR(255) REFERENCES Employee(nameFirst),
    deptID INT REFERENCES Employee(deptID),
    PRIMARY KEY (id)
);

--@block
CREATE TABLE IF NOT EXISTS Doctor(
    id INT REFERENCES Employee(id),
    nameLast VARCHAR(255) REFERENCES Employee(nameLast),
    nameFirst VARCHAR(255) REFERENCES Employee(nameFirst),
    deptID INT REFERENCES Employee(deptID),
    specialization VARCHAR(255),
    PRIMARY KEY (id)
);

--@block
CREATE TABLE IF NOT EXISTS Patient(
    ssn INT PRIMARY KEY,
    nameFirst VARCHAR(255) NOT NULL,
    nameLast VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    sex VARCHAR(255) NOT NULL,
    contact VARCHAR(255) NOT NULL,
    roomNum INT NOT NULL,
    docID INT NOT NULL ,
    nurseID INT NOT NULL,
    FOREIGN KEY (docID) REFERENCES Doctor(id),
    FOREIGN KEY (nurseID) REFERENCES Nurse(id)
);

--@block
CREATE TABLE IF NOT EXISTS Prescription(
    prID INT NOT NULL AUTO_INCREMENT,
    pSSN INT NOT NULL,
    pNameLast VARCHAR(255) REFERENCES Patient(nameLast),
    dID INT NOT NULL,
    dNameLast VARCHAR(255) NOT NULL REFERENCES Doctor(nameLast),
    mTradeName VARCHAR(255) NOT NULL,
    dosage INT NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE,
    datePrescribed DATE NOT NULL,
    prInterval VARCHAR(255) NOT NULL,
    FOREIGN KEY (pSSN) REFERENCES Patient(ssn),
    FOREIGN KEY (dID) REFERENCES Doctor(id),
    FOREIGN KEY (mTradeName) REFERENCES Medication(tradeName),
    PRIMARY KEY (prID)
);

--@block
CREATE TABLE IF NOT EXISTS Med_Records(
    pSSN INT NOT NULL,
    pNameLast VARCHAR(255) REFERENCES Patient(nameLast),
    dID INT NOT NULL REFERENCES Doctor(id),
    dNameLast VARCHAR(255) NOT NULL REFERENCES Doctor(nameLast),
    prID INT NOT NULL REFERENCES Prescription(prID),
    visits DATE,
    nNameFirst VARCHAR(255) NOT NULL REFERENCES Nurse(nameFirst),
    discharge DATETIME,
    bills INT,
    labwork TEXT,
    FOREIGN KEY (pSSN) REFERENCES Patient(ssn)
);

