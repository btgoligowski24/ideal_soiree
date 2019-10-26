var db = require("../models");

module.exports = function(app) {
  // Get all themes
  app.get("/api/themes/", function(req, res) {
    db.Theme.findAll({}).then(function(dbThemes) {
      res.json(dbThemes);
    });
  });

  // // POST route for creating a new build a theme into DB by grabbing name, drinks and food from model
  // app.post("/api/build", function(req, res) {
  //   // create takes an argument of an object describing the item we want to
  //   // insert into our Themes table. In this case we just we pass in an object with a text
  //   // and complete property (req.body)
  //   db.Theme.create({
  //     text: req.body.text,
  //     complete: req.body.complete
  //   })
  //     .then(function(foodDrink) {
  //       // We have access to the new theme as an argument inside of the callback function
  //       res.json(foodDrink);
  //     })
  //     .catch(function(err) {
  //       // Whenever a validation or flag fails, an error is thrown
  //       // We can "catch" the error to prevent it from being "thrown", which could crash our node app
  //       res.json(err);
  //     });
  // });

  // POST route for creating foodDrinks into DB
  app.post("/api/build", function(req, res) {
    // create takes an argument of an object describing the item we want to
    // insert into our Themes table. In this case we just we pass in an object with a text
    // and complete property (req.body)
    db.foodDrink
      .create(req.body)
      .then(function(newFoodDrink) {
        // We have access to the new foodDrink as an argument inside of the callback function
        res.json(newFoodDrink);
      })
      .catch(function(err) {
        // Whenever a validation or flag fails, an error is thrown
        // We can "catch" the error to prevent it from being "thrown", which could crash our node app
        res.json(err);
      });
  });

  // POST route for creating a new build a theme into DB by grabbing name
  app.post("/api/themes", function(req, res) {
    // create takes an argument of an object describing the item we want to
    // insert into our Themes table. In this case we just we pass in an object with a text
    // and complete property (req.body)
    db.Theme.findAll({}).then(function(themes) {
      for (var theme in themes) {
        if (req.body.name.toLowerCase() === themes[theme].name.toLowerCase()) {
          res
            .status(406)
            .send(
              "Theme Already Exists! Check out our themes page or try a different name."
            );
        }
      }
      db.Theme.create(req.body)
        .then(function(newTheme) {
          // We have access to the new theme as an argument inside of the callback function
          res.json(newTheme);
        })
        .catch(function(err) {
          // Whenever a validation or flag fails, an error is thrown
          // We can "catch" the error to prevent it from being "thrown", which could crash our node app
          res.json(err);
        });
    });
  });

  //delete POST request here
  app.delete("/api/themes/:id", function(req, res) {
    db.Theme.destroy({
      where: {
        id: req.params.id
      }
    }).then(function(Theme) {
      res.json(Theme);
    });
  });
};

// Delete an example by id
