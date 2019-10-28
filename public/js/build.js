function checkItemCount() {
  if ($("#selectedItems").children().length > 0) {
    $("#saveButton").css("display", "inline");
  }
}

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

function saveSelections() {
  const themeId = $(this)
    .siblings()
    .children("#currentTheme")[0].dataset.id;
  if (themeId === "") {
    alert(
      "You must associate your selections with a theme. Go to our themes page to select one or build a new theme from the home page."
    );
  } else {
    const chosenItems = $("#selectedItems").children();
    let itemArr = [];
    for (let i = 0; i < chosenItems.length; i++) {
      const newItem = {
        name: $(chosenItems[i]).attr("data-name"),
        imageurl: $(chosenItems[i]).attr("data-imageurl"),
        apiid: $(chosenItems[i]).attr("data-apiid"),
        ismeal: $(chosenItems[i]).attr("data-ismeal") === "true" ? 1 : 0,
        ingredients: $(chosenItems[i]).attr("data-ingredients"),
        instructions: $(chosenItems[i]).attr("data-instructions"),
        themeid: $(chosenItems[i]).attr("data-themeid")
      };
      itemArr.push(newItem);
    }

    $.ajax({
      headers: {
        "Content-Type": "application/json"
      },
      type: "POST",
      url: "/api/build",
      data: JSON.stringify(itemArr)
    })
      .then(function(response) {
        window.location.href = "/themes";
      })
      .catch(function(err) {
        alert(err.responseText);
      });
  }
}

//Onclick Image
$(document).on("click", ".notSelected", function() {
  $(this)
    .removeClass("notSelected")
    .addClass("selected");
  var clickId = $(this).attr("data-id");
  var isMeal = $(this).attr("data-ismeal");
  var queryURL;

  var parent = $(this).parent();
  parent.css({
    opacity: "0.5",
    filter: "alpha(opacity=50)",
    "box-shadow": "5px 10px 8px #888888"
  });
  parent.attr("class", "animated heartBeat delay=2s");

  //Onclick Function to pass in ID to a new Ajax call
  if (isMeal === "false") {
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

    if (isMeal === "false") {
      results = response.drinks[0];
      $(newAElem).text(results.strDrink);
      $(newAElem).attr({
        "data-imageurl": results.strDrinkThumb,
        "data-apiid": results.idDrink,
        "data-ismeal": false,
        "data-name": results.strDrink
      });
      ingredientCount = 15;
    } else {
      results = response.meals[0];
      $(newAElem).text(results.strMeal);
      $(newAElem).attr({
        "data-imageurl": results.strMealThumb,
        "data-apiid": results.idMeal,
        "data-ismeal": true,
        "data-name": results.strMeal
      });
      ingredientCount = 20;
    }

    for (var i = 1; i <= ingredientCount; i++) {
      if (
        (results["strIngredient" + i] === "" ||
          results["strIngredient" + i] === null ||
          results["strIngredient" + i] === " ") &&
        (results["strMeasure" + i] === "" ||
          results["strMeasure" + i] === null ||
          results["strMeasure" + i] === " ")
      ) {
        break;
      } else {
        if (i === 1) {
          if (
            results["strMeasure" + i] === "" ||
            results["strMeasure" + i] === null ||
            results["strMeasure" + i] === " "
          ) {
            ingredients += results["strIngredient" + i];
          } else {
            ingredients +=
              results["strMeasure" + i] + " " + results["strIngredient" + i];
          }
        } else {
          if (
            results["strMeasure" + i] === "" ||
            results["strMeasure" + i] === null ||
            results["strMeasure" + i] === " "
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
    checkItemCount();
  });
});

//Categories Function
function categories() {
  $(".dropdown-container a").removeClass("activeCate");
  $(this).addClass("activeCate");

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
      var button = $("<button>");
      button.attr("class", "btn btn-light rounded");
      var mealThumb = $("<img>");
      mealThumb.css({
        "box-shadow": "5px 10px 8px #888888",
        border: "solid white 15px"
      });
      mealThumb.attr("class", "card-img-top rounded notSelected");

      if (category === "drink") {
        mealThumb.attr({
          src: results[i].strDrinkThumb,
          "data-id": results[i].idDrink,
          "data-ismeal": false
        });
      } else {
        mealThumb.attr({
          src: results[i].strMealThumb,
          "data-id": results[i].idMeal,
          "data-ismeal": true
        });
      }
      button.append(mealThumb);
      $("#results").prepend(button);
    }
  });
}

$(".dropdown-container").on("click", ".categoryOption", categories);

//SaveButton
$("#saveButton").on("click", saveSelections);

// //Search Function
$("#searchButton").on("click", function(event) {
  event.preventDefault();
  // This line grabs the input from the textbox
  var searchTerm = $("#search")
    .val()
    .trim();
  var queryURL =
    "https://www.themealdb.com/api/json/v1/1/search.php?s=" +
    searchTerm +
    "&apikey=1";

  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    $("#results").empty();

    var results = response.meals;

    if (results === null) {
      queryURL =
        "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=" +
        searchTerm +
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
            var button = $("<button>");
            button.attr("class", "btn btn-light");
            var mealThumb = $("<img>");
            mealThumb.css({
              "box-shadow": "5px 10px 8px #888888",
              border: "solid white 15px"
            });
            mealThumb.attr({
              class: "card-img-top notSelected",
              src: results[i].strDrinkThumb,
              "data-id": results[i].idDrink,
              "data-ismeal": false
            });
            button.append(mealThumb);
            $("#results").prepend(button);
          }
        }
      });
    } else {
      for (var i = 0; i < results.length; i++) {
        var button = $("<button>");
        button.attr("class", "btn btn-light");
        var mealThumb = $("<img>");
        mealThumb.css({
          "box-shadow": "5px 10px 8px #888888",
          border: "solid white 15px"
        });

        mealThumb.attr({
          class: "card-img-top notSelected",
          src: results[i].strMealThumb,
          "data-id": results[i].idMeal,
          "data-ismeal": true
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
