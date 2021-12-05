--@block
INSERT INTO Department(dName)
VALUES  ('Pediatrics'),
        ('Nursing'),
        ('Paramedical'),
        ('Radiology'),
        ('Janatorial'),
        ('ER');

--@block
INSERT INTO Employee (nameFirst, nameLast, deptID)
VALUES  ('Bob','Williams',3),
        ('Adam','Petels',4),
        ('Claire','Temple',2),
        ('Kitty','Forman',2),
        ('Thomas','Pepper',5),
        ('John','Zoidberg',5),
        ('Gordon','DavenPort',6),
        ('Scruffy','Scruffington',6),
        ('Rob','Carter',1),
        ('David','Clean',5),
        ('Ricky','English',3),
        ('Beff','Jezos',5),
        ('Elen','Tusk',5),
        ('Wandy','Fairy',2),
        ('Patrick','Bar',1);

--@block
INSERT INTO Nurse (id, nameLast, nameFirst, deptID)
VALUES  (3,'Claire','Temple',2),
        (4,'Kitty','Forman',2),
        (9,'Rob','Carter',1),
        (15,'Patrick','Bar',1),
        (14,'Wandy','Fairy',2);



--@block
INSERT INTO Doctor(id, nameFirst, nameLast, DeptID, Specialization)
VALUES  (5,'Thomas', 'Pepper',6,'Heart Surgery'),
        (2,'Adam', 'Petals',4, 'Radiologists'),
        (6,'John', 'Zoidberg',6, 'Brain Surgery'),
        (12,'Beff', 'Jezos',6, 'Dermatologist'),
        (13,'Elen', 'Tusk',6, 'Cardiologist');

--@blocke
INSERT INTO Staff (id, position, nameLast, nameFirst, deptID)
VALUES  (1,'Driver','Williams','Bob',3),
        (8,'Manager','Scruffington','Scruffy',6),
        (7,'Janitor','Davenport','Gordon',6),
        (10,'Janitor','Clean','David',5),
        (11,'Driver','English','Ricky',3);

--@block
INSERT INTO Patient (SSN, nameFirst, nameLast, Age, Sex, Contact, roomNum, DocID, NurseID)
VALUES  (152537743, 'Eric', 'Tartman', 20, 'Male', '732-6750-4389',432, 2, 3),
    (148947235, 'Kyle', 'Rider',  58, 'Male', '978-754-3472', 210, 2, 4),
    (135626890, 'Jimmy', 'Falcon', 35, 'Male', '908-213-4578', 307, 6, 3),
    (146543243, 'Wendy', 'Burger', 54, 'Female', '674-543-9083', 101, 5, 4),
    (156789032, 'Carla', 'Winslow', 29,'Female', '932-456-1234', 202, 13, 15);

--@block
INSERT INTO Medication (tradeName, stock, treats, formula, sideEffects)
VALUES  ('Tylenol', 200, 'Pain', 'C8H9NO2', 'nausea, stomach pain, loss of appetite, itching, rash, headache, dark urine, clay-colored stool, jaundice'),
    ('Hydrocortisone', 500, 'skin conditions', 'C21H30O5', ' aggression, anxiety, blurred vision, burning, discharge, dizziness, dry mouth'),
    ('Methenamine', 100, ' infections', 'C6H12N4', ' Nausea, vomiting, diarrhea, abdominal crimps, and loss of appetite'),
    ('Levothyroxine', 50, 'hypothyroidism', 'C15H11I4NO4', 'chest pain, extreme fatigue, fainting, fever, heat intolerance, nausea'),
    ('Advil', 0, 'Pain', 'C13H18O2', 'Hives, Facial swelling, asthma, shock, rash, blisters, skiin reddening');

--@block
INSERT INTO Prescription (mTradeName ,pSSN, pNameLast, dNameLast, dosage, startDate, endDate, datePrescribed, prInterval, dID)
VALUES  ('Tylenol', 135626890, 'Falcon', 'Zoidberg', 3, '2021-06-20', '2021-07-18', '2021-06-19', 'daily', 6),
	('Advil', 146543243, 'Burger', 'Pepper', 8, '2021-07-19', '2021-08-15', '2021-07-19', 'daily', 5),
	('Levothyroxine', 156789032, 'Winslow', 'Tusk', 2, '2021-03-27', '2021-04-10', '2021-03-26', 'daily', 13),
	('Tylenol', 148947235, 'Rider', 'Petals', 1, '2020-11-21', '2020-11-30', '2020-11-20', 'daily',2),
	('Hydrocortisone', 152537743, 'Tartman', 'Petals', 3, '2020-03-11', '2020-03-30', '2020-03-11', 'weekly', 2)

--@block
INSERT INTO Med_Records (pSSN , pNameLast, nNameFirst, dID, dNameLast, visits, discharge,labwork, bills, PrID)
VALUES  (152537743, 'Tartman', 'Eric',2, 'Petels', '2020-1-26', '2020-3-11', NULL, 300, 5),
	(148947235, 'Rider', 'Kyle',2, 'Petels', '2020-11-5', '2020-11-20', 'cat scan', 500, 4),
	(135626890, 'Falcon', 'Jimmy',6, 'Zoidberg', '2021-1-10', ' 2021-6-20', 'blood test', 7000,1),
	(146543243, 'Burger', 'Wendy', 5, 'Pepper', '2021-5-7', '2021-7-19', 'physical', 3000, 2),
	(156789032, 'Winslow', 'Carla',13, 'Tusk', '2019-3-8', '2021-3-26', 'blood test', 500, 3);


