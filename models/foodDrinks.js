module.exports = function(sequelize, DataTypes) {
  var FoodDrink = sequelize.define("fooddrink", {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    imageURL: DataTypes.STRING,
    isMeal: {
      type: DataTypes.BOOLEAN,
      allowNull: false
    },
    apiID: {
      type: DataTypes.INTEGER,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    ingredients: {
      type: DataTypes.TEXT,
      allowNull: false,
      validate: {
        len: [1]
      }
    },
    instructions: {
      type: DataTypes.TEXT,
      allowNull: false,
      validate: {
        len: [1]
      }
    }
  });

  FoodDrink.associate = function(models) {
    // We're saying that a FoodDrink should belong to a theme
    // A FoodDrink can't be created without an theme due to the foreign key constraint
    FoodDrink.belongsTo(models.theme, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return FoodDrink;
};
