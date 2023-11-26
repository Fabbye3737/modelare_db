/*
CREATE TABLE IF NOT EXISTS mumii (
	id integer primary key NOT NULL,
	faron VARCHAR(50) NOT NULL,
	piramida VARCHAR(50) NOT NULL,
	tara integer NOT NULL
);

CREATE TABLE IF NOT EXISTS RRRRR (
	id integer primary key NOT NULL,
	faron VARCHAR(50) NOT NULL,
	piramida VARCHAR(50) NOT NULL,
	tara integer NOT NULL
);

CREATE TABLE IF NOT EXISTS roles(
	id integer primary key NOT NULL,
	name varchar(225) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS teacher_roles(
	id serial primary key NOT NULL,
	name varchar(225) UNIQUE NOT NULL
);

--urmeaza sa creem un tabel cu cheie primara simpla
 multiline comment
CREATE TABLE if not exists account_roles (
	id serial not null,
	name VARCHAR(50) not null unique,
	creation_date date not null,
	primary key(id)
);

CREATE TABLE if not exists account_roles2 (
	id serial not null,
	name VARCHAR(50) not null unique,
	creation_date date not null,
	primary key(id, name)
);

CREATE TABLE if not exists account_roles3 (
	id integer not null,
	name VARCHAR(50) not null,
	creation_date date not null,
	primary key(id, name)
);


CREATE TABLE if not exists adresa (
	id serial not null,
	nume_adresa VARCHAR(50) not null unique,
	cate_persoane_locuiesc smallint not null,
	de_cand_locuiesc_acolo date not null,
	primary key(id)
);

CREATE TABLE if not exists rezervare_autobuz (
	id serial not null,
	nume_rezervare VARCHAR(50) not null unique,
	ruta_autobuz VARCHAR(50) not null,
	locuri_rezervate CHAR(10) not null,
	primary key(id)
);

CREATE TABLE if not exists rezultate_concurs (
	id integer not null,
	nume_concurent VARCHAR(50) not null unique,
	pozitie_ocupata smallint not null unique,
	data_concurs date null,
	primary key(id, nume_concurent)
);

CREATE TABLE if not exists note_examen (
	id integer not null,
	nota smallint not null,
	nume_examinat VARCHAR(50) not null unique,
	materie char(25) null,
	primary key(id, nota, nume_examinat)
);
*/

/*
CREATE TABLE IF NOT EXISTS country (
	id serial primary key not null,
	indicativ char(3) not null,
	geometry varchar(100) not null,
	area DECIMAL not null
);

CREATE TABLE IF NOT EXISTS county (
	id serial primary key not null,
	country_id integer not null,
	area DECIMAL not null,
	siruta integer not null,
	geometry varchar(100) not null default 'POLYGON',
	foreign key(country_id) references country(id)
);
*/
/*
CREATE TABLE IF NOT EXISTS universitate (
	id serial primary key not null,
	nume varchar(100) not null,
	adresa varchar(100) not null,
	numar_telefon int null
);

CREATE TABLE IF NOT EXISTS facultate (
	id serial primary key not null,
	universitate_id integer not null,
	nume varchar(50) not null,
	specializari varchar(50) not null,
	cladire int not null,
	foreign key(universitate_id) references universitate(id)
);
*/

CREATE TABLE IF NOT EXISTS users (
	id serial primary key not null,
	name varchar(50) not null,
	email varchar(50) null,
	phone_number varchar(20) not null
);
/*
CREATE TABLE IF NOT EXISTS adress (
	id serial primary key not null, --coloana id joaca dublu rol de pk si fk pentru ca o cheie primara este by default unica
	adress varchar(200) not null,
	is_valid bool not null,
	foreign key(id) references users(id)
);

-- mai sus echivalent cu mai jos

CREATE TABLE IF NOT EXISTS adress (
	id serial primary key not null,
	users_id int not null unique,
	adress varchar(200) not null,
	is_valid bool not null,
	foreign key(users_id) references users(id)
);
*/
/*
CREATE TABLE IF NOT EXISTS users (
	id serial primary key not null,
	name varchar(50) not null,
	email varchar(50) null,
	phone_number varchar(20) not null
);

CREATE TABLE IF NOT EXISTS books (
	id serial primary key not null,
	title varchar(100) not null,
	isbn varchar(10) not null,
	published_date date not null,
	price decimal null
);
	
CREATE TABLE IF NOT EXISTS users_books (
	id serial primary key not null,
	user_id int not null,
	books_id int not null,
	review text not null,
	review_date date not null,
	foreign key(user_id) references users(id),
	foreign key(books_id) references books(id)
);
*/
/*
CREATE TABLE IF NOT EXISTS profesori(
	id serial primary key not null,
	name varchar(50) not null,
	email varchar(50) null,
	phone_number varchar(20) not null
);

CREATE TABLE IF NOT EXISTS subject (
	id serial primary key not null,
	name varchar(100) not null,
	class varchar(100) not null,
	class_hour time not null
);
	
CREATE TABLE IF NOT EXISTS probesori_subject (
	id serial primary key not null,
	profesori_id int not null,
	subject_id int not null,
	exam_dificulty char(3) not null,
	exam_date date not null,
	foreign key(profesori_id) references profesori(id),
	foreign key(subject_id) references subject(id)
);
*/

CREATE TABLE IF NOT EXISTS proprietar(
	id serial primary key not null,
	nume varchar(50) not null,
	cnp varchar(50) not null,
	serie_numar_ci varchar(9) not null
);

CREATE TABLE IF NOT EXISTS adresa_proprietar(
	id serial primary key not null,
	adresa varchar(200) not null,
	current_adress bool default TRUE,
	foreign key(id) references proprietar(id)--implementare relatie one to one. FK joaca rol dublu si de FK fiind unica
);

CREATE TABLE IF NOT EXISTS terenuri(
	id serial primary key not null,
	cf int not null,
	intavilan bool not null,
	suprafara decimal not null,
	categorie_folosinta varchar(5) not null
);

--implementare relatie many to many proprietar cu terenuri
CREATE TABLE IF NOT EXISTS proprietar_terenuri (
	id serial primary key not null,
	proprietar_id integer not null,
	terenuri_id integer not null,
	foreign key(proprietar_id) references proprietar(id),
	foreign key(terenuri_id) references terenuri(id)
);

CREATE TABLE IF NOT EXISTS proprietar_terenuri2 (
	proprietar_id integer not null,
	terenuri_id integer not null,
	primary key(proprietar_id, terenuri_id),
	foreign key(proprietar_id) references proprietar(id),
	foreign key(terenuri_id) references terenuri(id)
);