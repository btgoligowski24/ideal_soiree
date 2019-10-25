// Creates a "theme" table that matches up with DB
module.exports = function(sequelize, DataTypes) {
  var Theme = sequelize.define("Theme", {
    // Giving the theme model a name of type STRING
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    }
  });

  Theme.associate = function(models) {
    // Associating Theme with Posts
    // When an Theme is deleted, also delete any associated Posts
    Theme.hasMany(models.foodDrink, {
      onDelete: "cascade"
    });
  };

  return Theme;
};

// Creates a "foodDrink" table that matches up with DB
module.exports = function(sequelize, DataTypes) {
  var foodDrink = sequelize.define("foodDrink", {
    // Giving the Meal table a name of type STRING
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    }
  });

  foodDrink.associate = function(models) {
    // Associating Theme with Posts
    // When an Theme is deleted, also delete any associated Posts
    foodDrink.hasMany(models.foodDrink, {
      onDelete: "cascade"
    });
  };

  return foodDrink;
};
