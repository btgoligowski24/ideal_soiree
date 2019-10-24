//referencing connection to library
var Sequelize = require("sequelize");
// sequelize (lowercase) references our connection to the DB.
var sequelize = require("../config/connection.js");

// Creates a "theme" model that matches up with DB
var Theme = sequelize.define(
  "Theme",
  {
    // the routeName gets saved as a string
    routeName: Sequelize.STRING,
    // the name of the theme (a string)
    name: Sequelize.STRING,
    // the theme's drink (a string)
    drinks: Sequelize.STRING,
    // the theme's meal (a string)
    food: Sequelize.STRING
  },
  {
    // disables the modification of tablenames
    freezeTableName: true
  }
);

// Syncs with DB
Theme.sync();

// Makes the Theme Model available for other files (will also create a table)
module.exports = Theme;
