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