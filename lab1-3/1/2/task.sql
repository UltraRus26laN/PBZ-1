-- variant 5

-- 28
SELECT DISTINCT SPJ.ProjectID FROM SPJ WHERE SPJ.ProjectID NOT IN ( SELECT SPJ.ProjectID FROM SPJ INNER JOIN( SELECT S.ProviderID       FROM S WHERE S.City = 'Лондон' ) AS LndProviders ON SPJ.ProviderID = LndProviders.ProviderID INNER JOIN P ON P.ItemID = SPJ.ItemID WHERE P.Color = 'Красный');


-- 15
select count(*) from SPJ where ProviderID = 'П1';

-- 23
SELECT distinct ProviderID FROM SPJ WHERE ItemID IN (SELECT ItemID
FROM SPJ WHERE ProviderID IN (SELECT ProviderID FROM SPJ JOIN P
ON P.ItemID = SPJ.ItemID WHERE P.Color = 'Красный'));


-- 10
SELECT SPJ.ItemID FROM SPJ
WHERE SPJ.ProjectID IN 
(
   SELECT J.ProjectID FROM J WHERE J.City = 'Лондоне'
)
AND SPJ.ProviderID IN 
(
   SELECT S.ProviderID FROM S WHERE S.City = 'Лондоне'
);



-- 3
SELECT ProviderID FROM SPJ WHERE ProjectID = 'ПР1';


-- 5
SELECT P.Color, P.City FROM P;



-- 9
SELECT distinct P.ItemID from P join SPJ S on P.ItemID = S.ItemID
where P.City = 'Лондон';

-- 34
SELECT ppdn.detail_id
FROM provider_project_detail_numbers ppdn
         join providers p on p.id = ppdn.provider_id
         join projects p2 on p2.id = ppdn.project_id
WHERE p.city = 'Лондон'
   OR p2.city = 'Лондон';
-- 14
SELECT DISTINCT SPJ1.ItemID, SPJ2.ItemID FROM SPJ AS SPJ1
INNER JOIN SPJ AS SPJ2
ON SPJ2.ProviderID != SPJ1.ProviderID
WHERE (SPJ1.ItemID != SPJ2.ItemID AND
SPJ1.ItemID > SPJ2.ItemID) ORDER BY SPJ1.ItemID;


-- 29
SELECT DISTINCT ProjectID FROM SPJ WHERE ItemID = (SELECT DISTINCT ItemID FROM SPJ WHERE ProviderID = 'П1');

