USE persistencia_ej2_clase2;
-- 14. Obtener el numero de cajas de cada almacen
SELECT Almacen.codigo as almacen, COUNT(*) as cantidad
FROM Almacen, Cajas
WHERE Almacen.codigo = Cajas.almacen
GROUP BY codigo;
-- 15. Vaciar el contenido de los almacenes que están saturados

-- Sé que esto sería usando UPDATE y un SET con WHERE pero no se 
-- me ocurre como manejarlo
