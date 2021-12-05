--@block
UPDATE Department
SET dName = 'Ultrasound'
WHERE deptID = 4;

--@block
UPDATE Doctor
SET specialization = 'Dentist'
WHERE id = 2;

--@block
DELETE FROM 

--@block
CREATE VIEW medPrescribedView AS
SELECT m.tradeName, SUM(pr.dosage)
FROM Medication AS m, Prescription AS pr
WHERE m.tradeName = pr.mTradeName
GROUP BY m.tradeName;