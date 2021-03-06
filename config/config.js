const fs = require("fs");

module.exports = {
    development: {
        username: process.env.MYSQL_USER,
        password: process.env.MYSQL_PASSWORD,
        database: process.env.MYSQL_DATABASE,
        host: process.env.MYSQL_HOST,
        dialect: "mysql",
        operatorsAliases: false
    },
    test: {
        username: "root",
        password: null,
        database: "database_test",
        host: "127.0.0.1",
        dialect: "mysql",
        operatorsAliases: false
    },
    ci: {
        username: "root",
        password: "root",
        database: "testdb",
        host: "127.0.0.1",
        socketPath: "~travis/.my.cnf",
        dialect: "mysql",
        logging: false
    },
    production: {
        use_env_variable: "JAWSDB_URL",
        dialect: "mysql",
        operatorsAliases: false
    }
};