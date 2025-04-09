const mysql = require('mysql2');

const connection = mysql.createConnection({
//  host: 'localhost',
//  user: 'user',           // ← el usuario creado en Docker
//  password: 'password',   // ← la contraseña asociada
//  database: 'testdb'      // ← la base de datos creada
    user: 'root',
    password: 'root',
});

connection.connect((err) => {
  if (err) {
    console.error('Error de conexión:', err.message);
    return;
  }
  console.log('Conexión a MySQL exitosa');
});

module.exports = connection;
