-- 如果本地已存在该中间表，先删除
IF OBJECT_ID('dbo.m_plan_no_sign', 'U') IS NOT NULL
    DROP TABLE dbo.m_plan_no_sign;
GO

SELECT 
    PlanDate,
    b2bOderNo,
    b2bIndexNo,
    DealerAbbreviation,
    CD_Dealer,
    specialBookNo,
    DestinationCode,
    BillNo,
    REPLACE(ProductCode, '-', '') AS ProductCode, -- 去除连字符 -
    insertdate,
    ZuoFan
INTO dbo.[m_plan_no_sign]
FROM [10.160.192.116].[planDB].[dbo].[T_BianPlan];
GO

-- 💡 建议：为导出的新表添加索引，供后续视图/查询高效关联
CREATE NONCLUSTERED INDEX IX_m_plan_no_sign_main 
ON dbo.m_plan_no_sign (ProductCode, ZuoFan) 
INCLUDE (PlanDate, b2bOderNo, b2bIndexNo);