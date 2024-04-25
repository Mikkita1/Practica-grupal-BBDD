-- ¿Qué triggers pensáis que necesita la base de datos?, crea 2 trigger por tabla.

CREATE TRIGGER actualizar_cita
BEFORE UPDATE ON citas
FOR EACH ROW
INSERT INTO anteriores_citas(fecha, fechaAnterior, hora, horaAnterior, causa, id_mascota)
VALUES (OLD.fecha, NEW.fecha, OLD.hora, NEW.hora, OLD.causa, OLD.id_mascota);
-- guarda las anteriores citas antes de cambiarlas

CREATE TRIGGER nuevas_citas
AFTER INSERT ON citas
FOR EACH ROW 
INSERT INTO citas_nuevas (fecha, hora, causa, id_mascota)
VALUES (NEW.fecha, NEW.hora, NEW.causa, NEW.id_mascota);
-- guarda las nuevas citas para poder comprobarlas
