-- Crear tablas
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS ordenes;
DROP TABLE IF EXISTS orden_detalles;

CREATE TABLE clientes (
  id INTEGER PRIMARY KEY,
  nombre TEXT
);

CREATE TABLE productos (
  id INTEGER PRIMARY KEY,
  nombre TEXT,
  precio REAL
);

CREATE TABLE ordenes (
  id INTEGER PRIMARY KEY,
  cliente_id INTEGER,
  fecha TEXT,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE orden_detalles (
  id INTEGER PRIMARY KEY,
  orden_id INTEGER,
  producto_id INTEGER,
  cantidad INTEGER,
  FOREIGN KEY (orden_id) REFERENCES ordenes(id),
  FOREIGN KEY (producto_id) REFERENCES productos(id)
);
