/*
Author: John Smith
Date: 2024-03-25
Description: This script creates a table named tblMembers, inserts sample data into it, and creates a stored procedure named GetAllMembers to retrieve all members from the table.
*/

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Create table tblMembers

 CREATE TABLE [dbo].[tblMembers](
 [MemberID] [int] IDENTITY(1,1) NOT NULL,
 [MemberName] [varchar](50) NULL,
 [MemberCity] [varchar](25) NULL,
 [MemberPhone] [varchar](15) NULL)
GO

-- Inserting sample data into tblMembers table
INSERT INTO [dbo].[tblMembers] ([MemberName], [MemberCity], [MemberPhone]) VALUES 
    ('John Doe', 'New York', '123-456-7890'),
    ('Alice Smith', 'Los Angeles', '987-654-3210'),
    ('Bob Johnson', 'Chicago', '456-789-0123'),
    ('Emma Watson', 'San Francisco', '789-012-3456');
GO

-- Create stored procedure GetAllMembers
--CREATE PROCEDURE dbo.GetAllMembers 
--    @Param1 INT = 0, 
--    @Param2 INT = 0
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Insert stored procedure logic here
--    SELECT @Param1 AS Param1, @Param2 AS Param2;

--    -- Select statements for procedure here
--    SELECT * FROM tblMembers
--END


--CREATE PROCEDURE stpGetMembersByCityName
--    @CityName nvarchar(30)
--AS
--BEGIN
--    SET NOCOUNT ON;

--    -- Select members based on CityName parameter
--    SELECT *
--    FROM tblMembers
--    where MemberCity like '%'+@CityName+'%'
--END
--EXEC stpGetMembersByCityName @CityName = 'Los Angeles'


-- CREATE PROCEDURE stpInsertMember
-- @MemberName varchar(50),
-- @MemberCity varchar(25),
-- @MemberPhone varchar(15)

-- AS
-- BEGIN
-- -- SET NOCOUNT ON added to prevent extra result sets from
-- -- interfering with SELECT statements.
-- SET NOCOUNT ON;

--Insert into tblMembers (MemberName,MemberCity,MemberPhone)
--Values (@MemberName,@MemberCity, @MemberPhone)

-- END
-- EXEC stpInsertMember @MemberName = 'Suhana & Ashish Kalla ', @MemberCity = 'Mumbai ',
--@MemberPhone = N'9022592774xxx'


 CREATE PROCEDURE stpUpdateMemberByID
 @MemberID int,
 @MemberName varchar(50),
 @MemberCity varchar(25),
 @MemberPhone varchar(15)

 AS
 BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
 SET NOCOUNT ON;

 UPDATE tblMembers
 Set MemberName = @MemberName,
 MemberCity = @MemberCity,
 MemberPhone = @MemberPhone
 Where MemberID = @MemberID
 END
 GO
GO
