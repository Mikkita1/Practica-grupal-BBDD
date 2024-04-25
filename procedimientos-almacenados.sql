-- ¿Qué procedimientos almacenados podría necesitar la base de datos?, crea 2 procedimientos almacenados.

DELIMITER //
CREATE PROCEDURE cambiar_genero(p_genero varchar(10))
BEGIN 
    DECLARE genero char;
    IF p_genero="hembra" THEN
        SET genero='H';
    IF p_genero="macho" THEN
        SET genero='M';
    END IF;
END; //
DELIMITER;
