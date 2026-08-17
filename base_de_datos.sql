create database if not exists sistema_restaurante;
use sistema_restaurante;


-- hola mundo

create table Area (
    id_area int AUTO_INCREMENT primary key,
    nombre_area varchar(50) not null
);

CREATE TABLE Estado_condicion (
    id_estado_condicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_estado_condicion VARCHAR(60),
    empresa_de_dependencia VARCHAR(60)
);

CREATE TABLE Condicion (
    id_condicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_condicion VARCHAR(60),
    fk_estado_condicion INT,
    CONSTRAINT fk_estado_condicion FOREIGN KEY (fk_estado_condicion)
    REFERENCES Estado_condicion (id_estado_condicion)
);