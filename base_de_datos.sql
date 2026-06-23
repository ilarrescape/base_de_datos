create database if not exists sistema_restaurante;
use sistema_restaurante;


-- hola mundo

create table Area (
    id_area int AUTO_INCREMENT primary key,
    nombre_area varchar(50) not null
);
-- PARA Poder unir dos ramas, debo ingresar a una rama secundaria y unirme usando el nombre de la otra rama
-- Si yo quiero unir rama-1 con main
-- Me muevo a rama-1
-- y escribimos git merge main