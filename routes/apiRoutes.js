var db = require("../models");

module.exports = function(app) {
  // POST route for creating fooddrinks into DB uniquely based on apiid and themeid
  app.post("/api/build", function(req, res) {
    var items = req.body;

    Promise.all(
      items.map(function(value) {
        return db.fooddrink
          .findOrCreate({
            where: {
              apiID: value.apiid,
              themeId: value.themeid
            },
            defaults: {
              name: value.name,
              imageURL: value.imageurl,
              isMeal: value.ismeal,
              apiID: value.apiid,
              ingredients: value.ingredients,
              instructions: value.instructions,
              themeId: value.themeid
            }
          })
          .spread(function(itemResult, created) {
            // itemResult is the fooddrink instance

            if (created) {
              // created will be true if a new fooddrink was created
            } else {
              console.log("This item already belongs to this theme.");
            }
          });
      })
    )
      .then(function(themes) {
        res.status(200).send("/themes");
      })
      .catch(function(err) {
        res.status(400).send("Oops, something went wrong!");
      });
  });

  // POST route for creating a new build a theme into DB by grabbing name
  app.post("/api/themes", function(req, res) {
    // create takes an argument of an object describing the item we want to
    // insert into our Themes table. In this case we just we pass in an object with a text
    // and complete property (req.body)

    db.sequelize
      .query("SELECT * FROM themes WHERE LOWER(name) = :theme LIMIT 1", {
        replacements: {
          theme: req.body.name.toLowerCase()
        },
        type: db.sequelize.QueryTypes.SELECT
      })
      .then(function(themes) {
        if (themes.length > 0) {
          res
            .status(406)
            .send(
              "Theme Already Exists! Check out our themes page or try a different name."
            );
        } else {
          db.theme
            .create(req.body)
            .then(function(newTheme) {
              // We have access to the new theme as an argument inside of the callback function
              res.json(newTheme);
            })
            .catch(function(err) {
              // Whenever a validation or flag fails, an error is thrown
              // We can "catch" the error to prevent it from being "thrown", which could crash our node app
              res.json(err);
            });
        }
      });
  });

  //delete POST request here
  app.delete("/api/themes/:id", function(req, res) {
    db.theme
      .destroy({
        where: {
          id: req.params.id
        }
      })
      .then(function(Theme) {
        res.json(Theme);
      });
  });
};
