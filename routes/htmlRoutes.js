var db = require("../models");

module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    db.Example.findAll({}).then(function(dbExamples) {
      res.render("index", {
        style: "styles.css",
        msg: "Welcome!",
        examples: dbExamples
      });
    });
  });

  //Load for build page
  app.get("/build", function(req, res) {
    db.Example.findAll({}).then(function(dbExamples) {
      res.render("build", {
        title: "Build Your Own Theme!",
        style: "build.css",
        description: "Here you can build your own theme"
      });
    });
  });

  // Load example page and pass in an example by id
  app.get("/example/:id", function(req, res) {
    db.Example.findOne({ where: { id: req.params.id } }).then(function(
      dbExample
    ) {
      res.render("example", {
        example: dbExample
      });
    });
  });

  // Render 404 page for any unmatched routes
  app.get("*", function(req, res) {
    res.render("404");
  });
};
