USE [Northwind]
GO

DECLARE @return_value int



GO

DECLARE @return_value int

EXEC @return_value = [dbo].[stpUpdateMemberByID]
    @MemberID = 20,
    @MemberName = N'Nirupama Kalla',
    @MemberCity = N'Mumbai',
    @MemberPhone = N'904512541xxxx'

SELECT 'Return Value' = @return_value
