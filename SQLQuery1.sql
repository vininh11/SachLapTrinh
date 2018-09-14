drop table Book;
drop table Category;

Create table Book (
	BookID char(10) not null primary key,
	BookName varchar(200) not null,
	Tags Varchar(200),
	Publisher Varchar(200),
	Year DateTime,
	Authors Varchar(200),
	Pages int,
	Size float,
	BookDescription Varchar(5000)
);

Create table Category (
	CategoryID char(10) not null primary key,
	CategoryName varchar(1000)
);

-- =============================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE ult_Load_BookInfoByBookID
	-- Add the parameters for the stored procedure here
	@BookID char(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT BookName,Tags,Publisher,Year,Authors,Pages,Size,BookDescription from Book where BookID = @BookID;
END
GO
-- =============================================

Create table [User] (
	UserID char(10) not null primary key,
	UserName varchar(100) not null,
	UserPassword varchar(500) not null
);

alter table [Book] add ImagePath varchar(500);
alter table [Book] add CreateTime datetime;
alter table [Book] drop column UpdateTiem;
alter table [Book] add UpdateTime datetime;
alter table [Book] alter column Year varchar(10);

alter table [User] add CreateTime datetime;