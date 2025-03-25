import requests
import random
import time
from threading import Thread

# Configuración: usamos el nombre del servicio API
API_URL = "http://api:3000/lecturas"

NUM_DISPOSITIVOS = 3
INTERVALO_SEGUNDOS = 5

def enviar_lecturas(id_dispositivo):
    while True:
        lectura = {
            "id_dispositivo": id_dispositivo,
            "temperatura": round(random.uniform(20.0, 30.0), 2),
            "humedad": round(random.uniform(40.0, 70.0), 2),
            "voltaje": round(random.uniform(3.0, 3.5), 2),
            "corriente": round(random.uniform(0.8, 1.2), 2)
        }
        try:
            response = requests.post(API_URL, json=lectura)
            print(f"Dispositivo {id_dispositivo} --> {response.status_code}: {response.text}")
        except Exception as e:
            print(f"Error al enviar lectura: {e}")
        time.sleep(INTERVALO_SEGUNDOS)

threads = []
for i in range(1, NUM_DISPOSITIVOS + 1):
    t = Thread(target=enviar_lecturas, args=(i,))
    t.start()
    threads.append(t)

for t in threads:
    t.join()
