var db = require("../models");

module.exports = function(app) {
  //load build a theme page data from themes table
  module.exports = app => {
    app.get("/build", (req, res) => {
      db.themes.findAll({}).then(function(data) {
        const handlebarsObj = {
          theme: data
        };
        res.render("build", handlebarsObj);
      });
    });
  };
  //load index page and list of predefined themes from predefines table
  app.get("/index", (req, res) => {
    db.themes_name.findAll({}).then(function(data) {
      const handlebarsObj = {
        themes_name: data
      };
      res.render("index", handlebarsObj);
    });
  });
};

// might need to use below setup instead for routing to each different handlebar site (main, index and build):

// app.get("/", function(req, res) {
//   res.sendFile(path.join(__dirname, "../views/index.handlebars"));
// });
