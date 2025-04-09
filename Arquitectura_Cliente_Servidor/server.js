// server.js
const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());

const conexion = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'ejemplo'
});

conexion.connect();

app.get('/usuarios', (req, res) => {
  conexion.query('SELECT * FROM usuarios', (error, resultados) => {
    if (error) throw error;
    res.json(resultados);
  });
});

app.listen(3000, () => console.log('Servidor en puerto 3000'));
