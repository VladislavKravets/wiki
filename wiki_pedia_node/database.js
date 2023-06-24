const {Sequelize} = require('sequelize');
const config = require('./config');

const sequelize = new Sequelize(config.development.database, config.development.username, config.development.password, {
  host: 'postgres',
  dialect: 'postgres',
  port: 5432
});

module.exports = sequelize;
