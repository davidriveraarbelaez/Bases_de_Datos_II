// Script de inicialización de MongoDB para IoT_DB

db = db.getSiblingDB('iot_data');

// Crear colección 'lecturas' si no existe
if (!db.getCollectionNames().includes('lecturas')) {
    db.createCollection('lecturas');
}

// Crear índice por 'dispositivo_id'
db.lecturas.createIndex({ "dispositivo_id": 1 });

// Insertar documento inicial de prueba
db.lecturas.insertOne({
    dispositivo_id: 0,
    mediciones: {
        temperatura: 25.0,
        humedad: 45.0,
        voltaje: 3.8,
        corriente: 0.015
    },
    timestamp: new Date()
});
