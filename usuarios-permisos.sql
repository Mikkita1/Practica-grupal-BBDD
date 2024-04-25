-- Define qué usuarios crearías para que puedan acceder al SGBD y qué permisos tendrán.

-- Crearia el usuario de uno de los clientes y le daria privilegios para insertar citas
CREATE USER 'LuisGM'@'localhost' IDENTIFIED BY 'LuisGM';
GRANT INSERT ON citas.CitasVeterinarias TO LuisGM@localhost;
