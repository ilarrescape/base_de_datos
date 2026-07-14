CREATE DATABASE IF NOT EXISTS Data_Base;
USE Data_Base;

CREATE TABLE IF NOT EXISTS Restaurante (
    cuit int not null primary key,
    razon_social VARCHAR(80) not null UNIQUE,
    nombre_fantasia VARCHAR(60) not null,
    direccion VARCHAR not null,
    fk_ciudad int not null,
    Foreign Key (fk_ciudad) REFERENCES Ciudad(id_ciudad)
        ON UPDATE CASCADE
        ON DELETE RESTRICT 
);

CREATE TABLE IF NOT EXISTS Restaurante_Cargo_Empleado (
    fk_cargo int not null primary key,
    fk_condicion int not null primary key,
    fk_cuit_restaurante int not null primary key,
    fk_DNI_empleado int not null primary key,
    Foreign key (fk_cargo) REFERENCES Cargo(id_cargo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    Foreign key (fk_condicion) REFERENCES Condicion(id_condicion)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    Foreign key (fk_cuit_restaurante) REFERENCES Restaurante(cuit)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    Foreign key (fk_DNI_empleado) REFERENCES Empleado(dni)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    PRIMARY key(fk_cargo, fk_condicion, fk_cuit_restaurante, fk_DNI_empleado)
)
