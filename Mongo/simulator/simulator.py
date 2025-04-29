import random
import time
from datetime import datetime
from pymongo import MongoClient, errors

# Configuración de conexión
connected = False
while not connected:
    try:
        client = MongoClient("mongodb://mi-mongo:27017/", serverSelectionTimeoutMS=5000)
        db = client['iot_data']
        collection = db['lecturas']
        client.admin.command('ping')  # Verifica si Mongo está listo
        connected = True
        print("Conexión a MongoDB exitosa.")
    except errors.ServerSelectionTimeoutError:
        print("MongoDB no disponible aún. Reintentando en 5 segundos...")
        time.sleep(5)

# Simulación de dispositivos
NUM_DISPOSITIVOS = 3

def generar_medicion(id_dispositivo):
    return {
        "dispositivo_id": id_dispositivo,
        "mediciones": {
            "temperatura": round(random.uniform(20.0, 30.0), 2),
            "humedad": round(random.uniform(30.0, 60.0), 2),
            "voltaje": round(random.uniform(3.0, 4.2), 2),
            "corriente": round(random.uniform(0.01, 0.02), 3)
        },
        "timestamp": datetime.utcnow()
    }

while True:
    for dispositivo_id in range(1, NUM_DISPOSITIVOS + 1):
        documento = generar_medicion(dispositivo_id)
        collection.insert_one(documento)
        print(f"Insertado: {documento}")
    time.sleep(5)
