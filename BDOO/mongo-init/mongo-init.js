db = db.getSiblingDB('iotdb');

db.createUser({
  user: 'iot_user',
  pwd: 'iot_pass123',
  roles: [
    { role: 'readWrite', db: 'iotdb' }
  ]
});

db.devices.insertMany([
  {
    name: 'Sensor Temperatura 1',
    type: 'DHT11',
    value: 23.5,
    timestamp: new Date()
  },
  {
    name: 'Sensor Voltaje 1',
    type: 'INA219',
    value: 3.7,
    timestamp: new Date()
  }
]);
