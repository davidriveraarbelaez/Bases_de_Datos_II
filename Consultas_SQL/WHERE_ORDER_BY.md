# Sintaxis de WHERE

## WHERE
La cláusula WHERE se utiliza para filtrar registros. El WHERE se utiliza para extraer solo los registros que cumplen una condición específica.

## Sintaxis
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

## Ejemplo
```sql
SELECT * FROM Customers
WHERE Country='Mexico';
```

## ORDER BY
La cláusula ORDER BY se utiliza para ordenar los registros en orden ascendente o descendente.

## Sintaxis
```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country DESC;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country, CustomerName;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country DESC, CustomerName;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country, CustomerName DESC;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country DESC, CustomerName DESC;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName ASC;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country, CustomerName ASC;
```

## Ejemplo
```sql
SELECT * FROM Customers
ORDER BY Country DESC, CustomerName ASC;
```
