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
    db.theme
      .findAll({
        include: [db.fooddrink]
      })
      .then(function(themes) {
        res.render("themes", {
          title: "Pre-Existing Themes",
          style: "themes.css",
          description: "See the themes that already exist.",
          themes: themes
        });
      });
  });

  //Load for themes page
  app.get("/api/themes", function(req, res) {
    db.theme
      .findAll({
        include: [db.fooddrink]
      })
      .then(function(themes) {
        res.json(themes);
      });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
