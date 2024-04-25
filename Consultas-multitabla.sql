-- Crea 2 consultas multitablas que se ejecutarán de manera frecuente en la aplicación  (JOIN)

SELECT *
FROM citas ct
INNER JOIN mascota m ON ct.


SELECT CodigoPedido, Cantidad, PrecioUnidad, Nombre
FROM detallepedidos dp
INNER JOIN productos p ON dp.CodigoProducto=p.Codigoproducto
WHERE p.Gama='Herramientas';
