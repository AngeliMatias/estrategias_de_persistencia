USE persistencia_ej1_clase2;
-- 1. Obtener	los	nombres	de	los	productos	de	la	tienda.	
SELECT Articulos.nombre as nombre_del_producto
FROM Articulos;
-- 2. Obtener	los	nombres	y	los	precios	de	los	productos	de	la	tienda.	
SELECT Articulos.nombre as nombre_del_producto, Articulos.precio as precio 
FROM Articulos;
-- 3. Obtener	el	nombre	de	los	productos	cuyo	precio	sea	menor	o	
-- igual	a	200	
SELECT Articulos.nombre as nombre_del_producto, Articulos.precio as precio 
FROM Articulos
WHERE Articulos.precio <= 200;
-- 4. Obtener todos los	datos de los artículos cuyo precio	esté entre
-- los	60	$ y	los	120	$ (ambas cantidades	incluidas).	
SELECT Articulos.codigo as codigo_de_producto, Articulos.nombre as nombre_del_producto, Articulos.precio as precio, Articulos.fabricante as fabricante
FROM Articulos
WHERE Articulos.precio BETWEEN 60 AND 120;
-- 5. Obtener el nombre	y el precio	en	dolares (es	decir, el precio multiplicado por 85)	
SELECT Articulos.nombre as nombre_del_producto, Articulos.precio * 85 as precio_en_dolares 
FROM Articulos;
-- 6. Seleccionar	el	precio	medio	de	todos	los	productos.	
SELECT AVG(Articulos.precio) as precio_promedio
FROM Articulos;
-- 7. Obtener	un	listado	de	artículos,	incluyendo	el	nombre	del	artículo,	su	precio,	y	el	
-- nombre	de	su	fabricante.
SELECT Articulos.nombre as nombre_del_producto, Articulos.precio as precio, Articulos.fabricante as fabricante
FROM Articulos;