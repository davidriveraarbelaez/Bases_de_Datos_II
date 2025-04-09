1. Copiar los archivos de la carpeta Arquitectura_Cliente_Servidor

```bash
mkdir mvc
cd mvc
npm install
```

2. Script utilizado para la creación de la base de datos.

```sql
CREATE DATABASE ejemplo;
USE ejemplo;

CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100)
);

INSERT INTO usuarios (nombre, correo) VALUES
('Ana Pérez', 'ana@example.com'),
('Juan Gómez', 'juan@example.com');
```
