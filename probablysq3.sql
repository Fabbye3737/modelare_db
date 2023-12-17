CREATE TABLE IF NOT EXISTS tara(
    id serial not null,
    name varchar not null,
    primary key(id)
);

CREATE TABLE IF NOT EXISTS structura(
    id serial not null,
    tip varchar not null UNIQUE,
    primary key(id)
);

CREATE TABLE IF NOT EXISTS marime(
    id serial not null,
    marime varchar not null UNIQUE,
    primary key(id)
);

CREATE TABLE IF NOT EXISTS vulnerabilitate(
    id serial not null,
    vulnerabilitate varchar not null UNIQUE,
    primary key(id)
);

CREATE TABLE IF NOT EXISTS regiune_geografica(
    structura_id integer not null,
    marime_id integer not null,
    vulnerabilitate_id integer not null,
    nume varchar not null,
    primary key(structura_id, marime_id, vulnerabilitate_id),
    foreign key(structura_id) references structura(id),
    foreign key(marime_id) references marime(id),
    foreign key(vulnerabilitate_id) references vulnerabilitate(id),
    foreign key(tara_id) references tara(id)
);

CREATE TABLE IF NOT EXISTS uat(
    id serial not null,
    name varchar not null,
    primary key(id),
    foreign key(tara_id) references tara(id)
);