function insertTheme() {
  var url = decodeURIComponent(window.location.search);
  var name = url
    .split("&")
    .slice(1)
    .toString();
  var themeId = url
    .split("&")
    .slice(0, 1)
    .toString();
  var nameIndex;
  var idIndex;
  nameIndex = name.indexOf("=") + 1;
  idIndex = themeId.indexOf("=") + 1;
  name = name.slice(nameIndex);
  themeId = themeId.slice(idIndex);
  $("#currentTheme").text("View " + name + " Selections");
  $("#currentTheme").attr({ "data-id": themeId });
}

//Onclick Image
$(document).on("click", ".card-img-top", function() {
  var clickId = $(this).attr("data-id");
  var itemClassification = $(this).attr("data-classification");
  var queryURL;

  var parent = $(this).parent();
  parent.css({
    opacity: "0.5",
    filter: "alpha(opacity=50)",
    "background-color": "#d78c26",
    border: "solid #d78c26 10px"
  });
  parent.attr("class", "animated zoomIn delay=2s");

  //Onclick Function to pass in ID to a new Ajax call
  if (itemClassification === "drink") {
    queryURL =
      "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=" + clickId;
  } else {
    queryURL =
      "https://www.themealdb.com/api/json/v1/1/lookup.php?i=" + clickId;
  }

  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    var results;
    var ingredientCount;
    var ingredients = "";
    var themeId = $("#currentTheme").attr("data-id");
    var newAElem = $('<a href="#">');

    if (itemClassification === "drink") {
      results = response.drinks[0];
      $(newAElem).text(results.strDrink);
      $(newAElem).attr({
        "data-imageurl": results.strDrinkThumb,
        "data-apiid": results.idDrink,
        "data-classification": "drink",
        "data-name": results.strDrink
      });
      ingredientCount = 15;
    } else {
      results = response.meals[0];
      $(newAElem).text(results.strMeal);
      $(newAElem).attr({
        "data-imageurl": results.strMealThumb,
        "data-apiid": results.idMeal,
        "data-classification": "meal",
        "data-name": results.strMeal
      });
      ingredientCount = 20;
    }

    for (var i = 1; i <= ingredientCount; i++) {
      if (
        (results["strIngredient" + i] === "" ||
          results["strIngredient" + i] === null) &&
        (results["strMeasure" + i] === "" || results["strMeasure" + i] === null)
      ) {
        break;
      } else {
        if (i === 1) {
          if (
            results["strMeasure" + i] === "" ||
            results["strMeasure" + i] === null
          ) {
            ingredients += results["strIngredient" + i];
          } else {
            ingredients +=
              results["strMeasure" + i] + " " + results["strIngredient" + i];
          }
        } else {
          if (
            results["strMeasure" + i] === "" ||
            results["strMeasure" + i] === null
          ) {
            ingredients += "|" + results["strIngredient" + i];
          } else {
            ingredients +=
              "|" +
              results["strMeasure" + i] +
              " " +
              results["strIngredient" + i];
          }
        }
      }
    }

    $(newAElem).attr({
      "data-ingredients": ingredients,
      "data-instructions": results.strInstructions,
      "data-themeid": themeId
    });

    $("#selectedItems").append(newAElem);
  });
});

//Render Categories Function
function categories() {
  const category = $(this).attr("id");
  let queryURL;

  if (category === "drink") {
    queryURL =
      "https://www.thecocktaildb.com/api/json/v1/1/search.php?s&apikey=1";
  } else {
    queryURL =
      "https://www.themealdb.com/api/json/v1/1/filter.php?c=" +
      category +
      "&apikey=1";
  }
  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    $("#results").empty();

    var results;

    if (category === "drink") {
      results = response.drinks;
    } else {
      results = response.meals;
    }

    for (var i = 0; i < results.length; i++) {
      var boxDiv = $("<div>");
      boxDiv.attr("class", "box");
      var button = $("<button>");
      button.attr("class", "btn btn-light rounded");
      boxDiv.append(button);
      var mealThumb = $("<img>");
      mealThumb.attr("class", "card-img-top rounded");

      if (category === "drink") {
        mealThumb.attr({
          src: results[i].strDrinkThumb,
          "data-id": results[i].idDrink,
          "data-classification": "drink"
        });
      } else {
        mealThumb.attr({
          src: results[i].strMealThumb,
          "data-id": results[i].idMeal,
          "data-classification": "meal"
        });
      }
      button.append(mealThumb);
      $("#results").prepend(button);
    }
  });
}

$(".dropdown-container").on("click", ".categoryOption", categories);

//SaveButton
$(document).on("click", "#saveButton", function() {
  alert("Hiiiii!!!");
});

// //Search Category Function
$("#searchButton").on("click", function(event) {
  event.preventDefault();
  // This line grabs the input from the textbox
  var category = $("#search")
    .val()
    .trim();
  var queryURL =
    "https://www.themealdb.com/api/json/v1/1/search.php?s=" +
    category +
    "&apikey=1";

  console.log(category);

  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    $("#results").empty();

    var results = response.meals;

    if (results === null) {
      queryURL =
        "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=" +
        category +
        "&apikey=1";

      $.ajax({
        url: queryURL,
        method: "GET"
      }).then(function(response) {
        $("#results").empty();

        var results = response.drinks;

        if (results === null) {
          $("#results").html(
            "<h2>Ooops! Sorry there are no results for your search!</h2>"
          );
        } else {
          for (var i = 0; i < results.length; i++) {
            var boxDiv = $("<div>");
            boxDiv.attr("class", "box");
            var button = $("<button>");
            button.attr("class", "btn btn-light");
            boxDiv.append(button);
            var mealThumb = $("<img>");
            mealThumb.attr({
              class: "card-img-top",
              src: results[i].strDrinkThumb,
              "data-id": results[i].idDrink,
              "data-classification": "drink"
            });
            button.append(mealThumb);
            $("#results").prepend(button);
          }
        }
      });
    } else {
      for (var i = 0; i < results.length; i++) {
        var boxDiv = $("<div>");
        boxDiv.attr("class", "box");
        var button = $("<button>");
        button.attr("class", "btn btn-light");
        boxDiv.append(button);
        var mealThumb = $("<img>");

        mealThumb.attr({
          class: "card-img-top",
          src: results[i].strMealThumb,
          "data-id": results[i].idMeal,
          "data-classification": "meal"
        });
        button.append(mealThumb);
        $("#results").prepend(button);
      }
    }
  });
});

///Side NavBar Logic
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
}

insertTheme();
