CREATE DATABASE IF NOT EXISTS Base_datos;
USE Base_datos;

CREATE TABLE IF NOT EXISTS Producto (
    id_producto int not null auto_increment primary key,
    nombre_producto varchar(45) not null,
    descripcion varchar(200),
    precio_unitario float not null,
    fk_categoria int not null,
    fk_cuit_restaurante int not null,
    foreign key (fk_categoria) references Categoria(id_categoria),
    foreign key (fk_cuit_restaurante) references Restaurante(cuit)
    );

create table if not exists Categoria (
    id_categoria int not null auto_increment primary key,
    nombre_categoria varchar(45) not null,
    descripcion_categoria varchar(200)
    );

