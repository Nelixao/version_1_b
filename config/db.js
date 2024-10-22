// Conexion a Base de Datos 

import { Sequelize } from "sequelize";

// Crear un nuevo objeto de Sequelize con los parámetros de conexión
// Base de Datos, Usuario, Contraseña
const db = new Sequelize('hoteles', 'root', 'ximenaalonso', {
    host: '127.0.0.1', // Dirección del servidor de la base de datos
    dialect: 'mariadb', // Tipo de base de datos (MariaDB en este caso)
    port: 3306, // Puerto en el que MariaDB está escuchando
    pool: {
        max: 5, // Número máximo de conexiones en el pool
        min: 0, // Número mínimo de conexiones en el pool
        acquire: 30000, // Tiempo máximo para adquirir una conexión antes de lanzar error (milisegundos)
        idle: 10000, // Tiempo máximo que una conexión puede estar inactiva antes de cerrarse (milisegundos)
    },
    logging: false, // Desactivar el log de SQL en la consola (opcional)
    define: {
        timestamps: false, // No agregar automáticamente los campos de timestamps (createdAt, updatedAt)
        underscored: false // No usar guiones bajos para los nombres de las columnas
    }
});



// Exportar la instancia de Sequelize para usarla en otros archivos
export default db;
