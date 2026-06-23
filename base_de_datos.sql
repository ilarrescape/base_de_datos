create database if not exists sistema_restaurante;
use sistema_restaurante;

create table Area (
    id_area int AUTO_INCREMENT primary key,
    nombre_area varchar(50) not null
);