# Taller

1. Situación inicial: Tabla No Normalizada.

* Se tiene una tabla única llamada PedidosNoNormalizados con la siguiente estructura:

| PedidoID	| Cliente |	Teléfono	| Dirección	| Producto	| Cantidad |	Fecha |
|-----------|---------|-----------|-----------|-----------|----------|--------|
|1|	Juan Pérez | 3001234567	| Calle 123 #45-67	| Televisor	| 1 |	2025-02-01 |
|1|	Juan Pérez | 3001234567	| Calle 123 #45-67	| Parlante	| 2	| 2025-02-01 |
|2|	María González |	3109876543	| Carrera 89 #12-34 | Computador	| 1 |	2025-02-03 |

**Problemas:**

* Redundancia: Los datos del cliente (nombre, teléfono, dirección) se repiten para cada producto del mismo pedido.
* Dificultad para actualizar información del cliente sin modificar varias filas.

**Enunciado:**

Utilizando las reglas de normalización vistas en clase, normalice la tabla (PedidosNoNormalizados)[https://github.com/davidriveraarbelaez/Bases_de_Datos_II/blob/main/Normalizaci%C3%B3n/PedidosNoNormalizados.sql]. Asegúrese de eliminar la redundancia y facilitar la actualización de la información del cliente. Presente las tablas resultantes después de aplicar la Primera Forma Normal (1FN), Segunda Forma Normal (2FN) y Tercera Forma Normal (3FN).

**Entregables:**
* Crear un archivo PDF con las tablas resultantes y las explicaciones correspondientes.
* Subir el archivo PDF al aula virtual.

2. 
