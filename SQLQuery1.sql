drop table Book;

Create table Book (
	BookID Varchar(10) not null primary key,
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
	CategoryID varchar(10) not null primary key,
	CategoryName varchar(1000)
);