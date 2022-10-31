---## UNION & UNION ALL OPERATOR

select * from df1
select * from df2

-- Union All
select * from df1
union all -- add data row wise & keep duplicate
select * from df2

--- Union 
select * from df1
union -- add data row wise & Remove duplicate row
select * from df2

---- single column union 
SELECT City FROM Customers --91 rows
UNION ALL 
SELECT City FROM Suppliers --29 rows
ORDER BY City

SELECT City FROM Customers  --91
UNION 
SELECT City FROM Suppliers  --29
ORDER BY City

--UNION ALL
--Use UNION ALL to also select duplicate values!
--UNION ALL WITH WHERE

SELECT City, Country FROM Customers
WHERE Country='Germany' --- 11 Rows
UNION ALL -- add row wise & keep duplicate
SELECT City, Country FROM Suppliers
WHERE Country='Germany' -- 3 Rows
ORDER BY City

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION  -- add row wise & Remove duplicate
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City

---- Advanced union 
SELECT * INTO abcd 
FROM ( 
    SELECT City, Country FROM Customers
	where Country='Germany'   --- 11 rows
    UNION All 
    SELECT City, Country FROM Suppliers  -- 3 rows
    WHERE Country='Germany' ) AS tmp

select * from abcd