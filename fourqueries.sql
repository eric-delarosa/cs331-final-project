--@block
SELECT mr.pSSN, p.nameFirst, SUM(mr.bills)
FROM Med_Records AS mr, Patient AS p
WHERE mr.pSSN = p.ssn
GROUP BY mr.pSSN;


--@block
SELECT mr.pSSN, p.nameFirst, SUM(mr.bills)
FROM Med_Records AS mr, Patient AS p
WHERE mr.pSSN = p.ssn
GROUP BY mr.pSSN
HAVING SUM(mr.bills) > 1000;

--@block
SELECT m.tradeName, m.stock
FROM Medication AS m
WHERE m.stock < ALL (
    SELECT pr.dosage
    FROM Prescription AS pr
    WHERE pr.mTradeName = m.tradeName
);

--@block
SELECT m.tradeName
FROM Medication AS m
WHERE m.tradeName  IN (
    SELECT pr.mTradeName
    FROM Prescription AS pr
    WHERE pr.mTradeName = m.tradeName
);