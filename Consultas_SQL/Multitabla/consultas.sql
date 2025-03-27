-- 1. Ver todas las órdenes con nombre del cliente
SELECT o.id AS orden_id, c.nombre AS cliente, o.fecha
FROM ordenes o
JOIN clientes c ON o.cliente_id = c.id;

-- 2. Productos comprados en cada orden
SELECT o.id AS orden_id, p.nombre AS producto, od.cantidad
FROM ordenes o
JOIN orden_detalles od ON o.id = od.orden_id
JOIN productos p ON od.producto_id = p.id;

-- 3. Total gastado por cada cliente
SELECT c.nombre, SUM(p.precio * od.cantidad) AS total_gastado
FROM clientes c
JOIN ordenes o ON c.id = o.cliente_id
JOIN orden_detalles od ON o.id = od.orden_id
JOIN productos p ON od.producto_id = p.id
GROUP BY c.nombre;

-- 4. Producto más vendido
SELECT p.nombre, SUM(od.cantidad) AS total_vendido
FROM productos p
JOIN orden_detalles od ON p.id = od.producto_id
GROUP BY p.nombre
ORDER BY total_vendido DESC
LIMIT 1;
