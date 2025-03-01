USE [TestDB_2022_CS_144]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/23/2024 9:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student-Ahmad](
	[Name] [nchar](10) NULL,
	[Section] [nchar](10) NULL,
	[Session] [nchar](10) NULL,
	[DegreeProgram] [nchar](10) NULL,
	[Roll-No] [nchar](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Student-Ahmad] ([Name], [Section], [Session], [DegreeProgram], [Roll-No]) VALUES (N'Ahmad     ', N'C         ', N'2022      ', N'BSCS      ', N'144       ')
INSERT [dbo].[Student-Ahmad] ([Name], [Section], [Session], [DegreeProgram], [Roll-No]) VALUES (N'Saad      ', N'B         ', N'2020      ', N'Civil     ', N'148       ')
INSERT [dbo].[Student-Ahmad] ([Name], [Section], [Session], [DegreeProgram], [Roll-No]) VALUES (N'Watto     ', N'A         ', N'2019      ', N'ME        ', N'145       ')
INSERT [dbo].[Student-Ahmad] ([Name], [Section], [Session], [DegreeProgram], [Roll-No]) VALUES (N'Tayyab    ', N'D         ', N'2013      ', N'IBM       ', N'135       ')
GO
