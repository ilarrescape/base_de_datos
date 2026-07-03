create database if not exists sistema_restaurante;
use sistema_restaurante;


-- hola mundo

create table Area (
    id_area int AUTO_INCREMENT primary key,
    nombre_area varchar(50) not null
);

create database if not exists sistema_restaurante;
use sistema_restaurante;


create table if not exists Ciudad (
    id_ciudad int AUTO_INCREMENT primary key,
    nombre_ciudad varchar(50)
);

create table if not exists Empleado(
    DNI int primary key,
    nombre_empleado varchar(50),
    apellido_empleado varchar(50),
    fecha_nacimiento date
);

create table if not exists Mesas (
    id_mesa int,
    num_nom_mesa varchar(30),
    cantidad_comensales int,
    ubicacion_x float,
    ubicacion_y float,
    descripcion text,
    fk_restaurante int,
    constraint Mesas_fkey_Restaurante
    foreign key (fk_restaurante) references Restaurante(cuit)
);
