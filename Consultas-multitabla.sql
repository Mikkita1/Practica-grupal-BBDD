-- Crea 2 consultas multitablas que se ejecutarán de manera frecuente en la aplicación  (JOIN)

SELECT *
FROM citas ct
INNER JOIN mascota m ON ct.id_mascota = m.id_mascota
WHERE m.especie="gato";
-- Nos muestra las citas en las que las mascotas son gatos

SELECT *
FROM cliente cl
INNER JOIN mascota m ON m.dni = cl.dni
WHERE m.genero="hembra";
--Nos muestra los clientes que tienen de mascotas a hembras
