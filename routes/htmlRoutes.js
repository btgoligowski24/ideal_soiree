var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    res.render("index", {
      style: "styles.css"
    });
  });

  //Load for build page
  app.get("/build", function(req, res) {
    res.render("build", {
      title: "Build Your Own Theme!",
      style: "build.css",
      description: "Here you can build your own theme"
    });
  });

  //Load for themes page
  app.get("/themes", function(req, res) {
    db.Theme.findAll({}).then(function(themes_db) {
      res.render("themes", {
        title: "Starter Themes",
        style: "themes.css",
        description: "See our predefined themes."
      });
    });
  });

  // Load example page and pass in an example by id
  app.get("/examples/:id", function(req, res) {
    db.Theme.findOne({
      where: {
        id: req.params.id
      }
    }).then(function(themes_db) {
      res.render("example", {
        example: themes_db
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
