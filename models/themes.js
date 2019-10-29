// Creates a "theme" table that matches up with DB
module.exports = function(sequelize, DataTypes) {
  var Theme = sequelize.define("theme", {
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
    Theme.hasMany(models.fooddrink, {
      onDelete: "cascade"
    });
  };

  return Theme;
};
