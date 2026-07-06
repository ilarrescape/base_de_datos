create database if not exists sistema_restaurante;
use sistema_restaurante;

create table if not exists Area (
    id_area int AUTO_INCREMENT primary key,
    nombre_area varchar(50) not null
);
-- hola mundo


-- hola mundo

create table if not exists Estado_condicion (
    id_estado_condicion INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estado_condicion VARCHAR(100) NOT NULL,
    empresa_de_dependencia VARCHAR(100) NOT NULL
)