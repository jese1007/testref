CREATE DATABASE covid;
CREATE ROLE usercovid LOGIN password '123456';
ALTER DATABASE covid OWNER TO usercovid;

create table users(
    id int not null,
    logins varchar(20),
    mdp varchar(40)
    CONSTRAINT pk_user primary key (id)
);

CREATE TABLE user_token(
    id INT NOT NULL,
    id_user INT NOT NULL,
    token VARCHAR(40) NOT NULL,
    CONSTRAINT pk_token PRIMARY KEY (id),
    CONSTRAINT _user UNIQUE(token)
);

insert into users values (1,'jese',md5('jese'));

create table pays(
    id int not null,
    nom VARCHAR(30),
    CONSTRAINT pk_pays PRIMARY KEY (id)
);

insert into pays 
values (1,'MADAGASCAR'),(2,'MONDE');


create table faritra(
    id int not null,
    id_pays int not null,
    nom VARCHAR(30),
    CONSTRAINT pk_faritra PRIMARY KEY (id),
    constraint fk_faritrapays FOREIGN KEY (id_pays) REFERENCES pays(id)
);

insert into faritra values
(1,1,'antananarivo'),
(2,1,'toamasina'),
(3,1,'antsiranana'),
(4,1,'mahajanga'),
(5,1,'fianarantsoa'),
(6,1,'tolaniaro'),
(7,2,'monde'),

create table cas(
    id int ,
    confirnne int,
    guerie int,
    traitement,
    grave int,
    dece int,
    andro date ,
    primary key (id)
);

create table vaccin(
    id int not null,
    nom varchar(30),
    details varchar(100),
    CONSTRAINT pk_vaccin PRIMARY KEY (id)
);

create table fitrangany(
    id int not null,
    detail varchar(100),
    CONSTRAINT pk_fitrangany PRIMARY KEY (id)
);

create table remaid(
    id int not null,
    nom varchar(20),
    detail varchar(100),
    CONSTRAINT pk_remaid PRIMARY KEY (id)
);

create sequence seq_cas start 1;
create sequence seq_vaccin start 1;
create sequence seq_fitrangany start 1;
create sequence seq_remaid start 1;


