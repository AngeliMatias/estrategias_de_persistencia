const Sequelize = require('sequelize');

const sequelize = new Sequelize('clase 4', 'root', 'root', {
  host: 'localhost',
  dialect: 'mariadb' /* one of 'mysql' | 'mariadb' | 'postgres' | 'mssql' */
});

sequelize
  .authenticate()
  .then(() => {
    console.log('La conexión fue exitosa');
  })
  .catch(err => {
    console.error('No se pudo conectar a la base de datos: ', err);
  });



class Alumnos extends Sequelize.Model {}
Alumnos.init({
  nombre: Sequelize.STRING,
  apellido:Sequelize.STRING
}, { sequelize, modelName: 'users' });


Alumnos.destroy({
    where: {
      id: 2
    }
  }).then(() => {
    console.log("Alumno eliminado");
  });
  




