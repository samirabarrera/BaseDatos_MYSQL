const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',   
    user: 'userapp',  
    password: 'Ccna2024*',     
    database: 'BancoDB_Tarea'  // Nombre exacto de la base de datos en MySQL
});

const closeConnection = () => {
    connection.end((err) => {
        if (err) {
            console.error("Error al conectar a la base de datos: ", err);
        } else {
            console.log("Conexión cerrada");
        }
    });
}

connection.query('SELECT * FROM clientes', (err, results, fields) => {
    if (err) {
        console.error("Hubo un error en query: ", err);
    } else {
        console.log("resultados: ", results);
        console.log("Campos: ", fields);
    }
    closeConnection ()
});