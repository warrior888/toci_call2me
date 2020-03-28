

create table Languages
(
	Id bigint identity primary key,
	Name text,
	Currency text
);

insert into Languages (name, currency) values ('Polski', 'PLN');

create table Phrases
(
	Id bigint identity primary key,
	Phrase text
);

insert into Phrases (Phrase) values ('_welcome');

insert into Languages (name) values ('_polish');

insert into Phrases (Phrase) values ('_unknown_database_error');

create table Translations
(
	Id bigint identity primary key,
	IdLanguages bigint references Languages(Id),
	IdPhrases bigint references Phrases(Id),
	Translation text
);

create table Users
(
	Id bigint identity primary key,
	ComesFrom int,
	Gender int,
	Name text,
	Surname text,
	Email text,
	Phone text,
	Password text,
	EmailVerified int,
	City text,
	PostCode text,
	Street text,
	IdLanguages bigint references Languages(Id)
);
