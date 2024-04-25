-- Crea 2 inserciones, 2 modificaciones y 2 eliminaciones. 

-- INSERCIONES
INSERT INTO cliente VALUES
(02544312, "Lana", "Bonilla", "Moreno", "calle maria magdalena, 18", 913234261, "lanabb@mail.com"),
(02846374, "Gema", "Alvez", "Gutierrez", "calle arcangel gabriel, 22", 654829111, "GemaAlvez@mail.com");

INSERT INTO citas (fecha, hora, causa, id_mascota) VALUES
('2025-04-25', '16:50:00', "vacuna trivalente", 1),
('2025-03-09', '12:20:00', "vacuna heptavalente", 2);

-- MODIFICACIONES
UPDATE citas
SET fecha='2024-05-01'
WHERE fecha='2024-04-%';
-- Cambia las citas del mes de abril al primer dia de mayo

UPDATE mascota
SET especie="gata"
WHERE especie="gato" AND genero="hembra";

-- ELIMINACIONES
DELETE FROM citas
WHERE fecha='2023-%';
-- elimina las citas del año pasado

DELETE FROM mascota
WHERE fecha_nacimiento='2005%';
-- elimina las mascotas que nacieron en 2005
