-- Diseño de la Base de Datos

CREATE DATABASE IF NOT EXIST CitasVeterinarias;

USE CitasVeterinarias;

CREATE TABLE mascota (
  id_mascota int auto_increment primary key not null,
  nombre varchar(25),
  especie varchar(25),
  raza varchar(25),
  genero varchar(10),
  color varchar(25),
  fecha_nacimiento date
);

CREATE TABLE cliente (
  id_cliente int auto_increment primary key not null,
  nombre varchar(25),
  apellido1 varchar(25),
  apellido2 varchar(25),
  direccion varchar(100),
  telefono int(9),
  email varchar(50),
  foreign key (id_mascota) references mascota(id_mascota)
);

CREATE TABLE citas (
  num_cita int auto_increment primary key not null,
  fecha date,
  hora time,
  foreign key (id_cliente) references cliente(id_cliente),
  foreign key (id_mascota) references mascota(id_mascota)
);

-- Datos de la tabla mascota
INSERT INTO mascota (nombre, especie, raza, genero, color, fecha_nacimiento) VALUES
("Angy", "perro", "chihuahua", "hembra", "marron", '2011-10-17'),
("Lily", "perro", "bulldog frances", "hembra", "blanco y negro", '2015-04-01'),
("Georgia", "perro", "chihuahua", "hembra", "blanco y marron", '2019-11-15'),
("Gnar", "gato", "birmano", "macho", "beis y marron", '2021-03-23'),
("Coco", "dragon barbudo", "pogona", "hembra", "crema", '2018-09-12'),
("Peluso", "huron", "americano", "macho", "beis", '2008-07-03');

INSERT INTO clientes (nombre, apellido1, apellido2, direccion, telefono, email) VALUES
("Luis", "Gerard", "Montes", "calle cordoba, 14", 912334567, "luisgm@mail.com"),
("Marta", "Garcia", "Lopez", "avenida andalucia, 23 4ºa", 651234098, "martitalagl@mail.es"),
("Ana", "Morales", "Cordoba", "calle del cerro, 32 1ºc", 732451872, "anitamora@mail.com"),
("Adan", "Gonzalez", "Ruiz", "calle del olvido, 1", 654712330, "adan87grrr@mail.com"),
("Maria", "Lopez", "Perez", "avenida buena vista, 33", 675000981, "lamarilo@mail.com"),
("Lola", "Diaz", "Adalbert", "calle cristo redentor, 46 2ºb", 700123665, "lolitalamasbonita@mail.com");

INSERT INTO citas
