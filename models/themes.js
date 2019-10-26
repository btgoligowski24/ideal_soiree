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
    },
    description: {
      type: DataTypes.STRING,
      allowNull: true
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
