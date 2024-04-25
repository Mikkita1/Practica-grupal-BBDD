-- ¿Qué vistas le proporcionaríais a cada usuario teniendo en cuenta las funciones que van a desarrollar? crea mínimo 2 vistas.

CREATE VIEW mascota_cliente AS
    SELECT * FROM mascota m 
    INNER JOIN cliente cl ON cl.dni = m.dni GROUP BY dni;

CREATE VIEW citas2024 AS
    SELECT * citas WHERE fecha='2024%';
