Create table Book (
	BookID Varchar(10) not null primary key,
	Tags Varchar(200) not null,
	Publisher Varchar(200),
	Year DateTime,
	Authors Varchar(200),
	Pages int,
	Size float,
	BookDescription Varchar(5000)
);

