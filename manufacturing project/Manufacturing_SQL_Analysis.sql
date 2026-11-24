CREATE DATABASE ManufacturingDB;
GO
USE ManufacturingDB;
GO
USE ManufacturingDB;
GO

SELECT COUNT(*) AS Total_Records
FROM [dbo].[ai4i2020]

SELECT TOP 10 *
FROM [dbo].[ai4i2020]


USE ManufacturingDB;
GO

SELECT
    COUNT(*) AS Total_Records,
    SUM(CASE WHEN UDI IS NULL THEN 1 ELSE 0 END) AS Null_UDI,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS Null_Product_ID,
    SUM(CASE WHEN [Type] IS NULL THEN 1 ELSE 0 END) AS Null_Type,
    SUM(CASE WHEN Tool_wear_min IS NULL THEN 1 ELSE 0 END) AS Null_Tool_Wear,
    SUM(CASE WHEN Machine_failure IS NULL THEN 1 ELSE 0 END) AS Null_Machine_Failure
FROM [dbo].[ai4i2020];

SELECT
    UDI, Product_ID, [Type], Air_temperature_K, Process_temperature_K,
    Rotational_speed_rpm, Torque_Nm, Tool_wear_min, Machine_failure,
    TWF, HDF, PWF, OSF, RNF,
    COUNT(*) AS Duplicate_Count
FROM [dbo].[ai4i2020]
GROUP BY
    UDI, Product_ID, [Type], Air_temperature_K, Process_temperature_K,
    Rotational_speed_rpm, Torque_Nm, Tool_wear_min, Machine_failure,
    TWF, HDF, PWF, OSF, RNF
HAVING COUNT(*) > 1;

SELECT
    [Type],
    COUNT(*) AS Total_Records,
    SUM(CAST(Machine_failure AS INT)) AS Failure_Records,
    SUM(CAST(TWF AS INT)) AS TWF_Count,
    SUM(CAST(HDF AS INT)) AS HDF_Count,
    SUM(CAST(PWF AS INT)) AS PWF_Count,
    SUM(CAST(OSF AS INT)) AS OSF_Count,
    SUM(CAST(RNF AS INT)) AS RNF_Count
FROM [dbo].[ai4i2020]
GROUP BY [Type]
ORDER BY Failure_Records DESC;