
--@block
CREATE TABLE Medication(
    TradeName VARCHAR(255) PRIMARY KEY NOT NULL,
    Stock INT NOT NULL,
    Treats CLOB NOT NULL,
    Formula VARCHAR(255) NOT NULL,
    SideEffects CLOB NOT NULL
);