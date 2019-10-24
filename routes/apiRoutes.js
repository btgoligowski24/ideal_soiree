var db = require("../models");

module.exports = function(app) {
  // Get all of the themes
  app.get("/api/themes", function(req, res) {
    db.themes_db.findAll({}).then(function(themes_db) {
      res.json(themes_db);
    });
  });

  // Post route for saving a new food
  app.post("/api/food", function(req, res) {
    db.food
      .create({
        text: req.body.text,
        complete: req.body.complete
      })
      .then(function(food) {
        res.json(food);
      })
      .catch(function(err) {
        // Whenever a validation or flag fails, an error is thrown
        res.json(err);
      });
  });

  //Post route for saving a new drink
  app.post("/api/drinks", function(req, res) {
    db.drinks
      .create({
        text: req.body.text,
        complete: req.body.complete
      })
      .then(function(drinks) {
        res.json(drinks);
      })
      .catch(function(err) {
        // Whenever a validation or flag fails, an error is thrown
        res.json(err);
      });
  });

  //Post route for saving predefined theme to DB
  app.post("/api/food", function(req, res) {
    db.predefines
      .create({
        text: req.body.text,
        complete: req.body.complete
      })
      .then(function(predefines) {
        res.json(predefines);
      })
      .catch(function(err) {
        // Whenever a validation or flag fails, an error is thrown
        res.json(err);
      });
  });

  // Delete an example by id
  app.delete("/api/themes/:id", function(req, res) {
    db.themes_db
      .destroy({ where: { id: req.params.id } })
      .then(function(themes_db) {
        res.json(themes_db);
      });
  });
};
