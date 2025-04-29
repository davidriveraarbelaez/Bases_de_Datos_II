# Proyecto IoT_DB

Este proyecto simula un ecosistema de dispositivos IoT cuyos datos se almacenan en MongoDB.
La arquitectura usa Docker para contener MongoDB, Mongo Express y un simulador de datos IoT automático.

---

## Estructura del Proyecto

```
IoT_DB/
├── docker-compose.yml
├── mongo-express/
│   └── .env
├── mongo-init/
│   └── init.js
├── simulator/
│   ├── Dockerfile
│   └── simulator.py
└── README.md
```

---

## 🛠 Requisitos Previos

- Docker instalado ([Guía de instalación](https://docs.docker.com/get-docker/))
- Docker Compose instalado

---

## Cómo levantar el proyecto

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu_usuario/IoT_DB.git
   cd IoT_DB
   ```

2. Corre el proyecto usando Docker Compose:
   ```bash
   docker-compose up --build -d
   ```

3. Verifica que los contenedores estén activos:
   ```bash
   docker ps
   ```

4. Accede a Mongo Express en tu navegador:
   - URL: [http://localhost:8081](http://localhost:8081)
   - Usuario: `admin`
   - Contraseña: `admin123`

---

## Qué servicios se despliegan

- **MongoDB**: Base de datos de documentos para almacenar mediciones IoT.
- **Mongo Express**: Interfaz gráfica web para visualizar datos.
- **Simulator**: Servicio que genera datos falsos de dispositivos IoT e inyecta registros en MongoDB.

---

## Estructura de la Base de Datos

Base de Datos: `iot_data`  
Colección: `lecturas`

Ejemplo de un documento insertado:

```json
{
  "dispositivo_id": 1,
  "mediciones": {
    "temperatura": 22.5,
    "humedad": 45.2,
    "voltaje": 3.7,
    "corriente": 0.015
  },
  "timestamp": "2025-04-28T12:00:00Z"
}
```

---

## Para detener el proyecto

```bash
docker-compose down
```

## Para detener y eliminar volúmenes (reset completo)

```bash
docker-compose down -v
```

---

## Diagrama de Arquitectura

```
[Simulator] --> [MongoDB] --> [Mongo Express] --> [Usuario]
```

---

## Autor

Desarrollado por: David Ricardo Rivera Arbeláez