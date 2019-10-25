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
      button.attr("class", "btn btn-light");
      boxDiv.append(button);
      var mealThumb = $("<img>");
      mealThumb.attr("class", "card-img-top");

      if (category === "drink") {
        mealThumb.attr("src", results[i].strDrinkThumb);
      } else {
        mealThumb.attr("src", results[i].strMealThumb);
      }
      button.append(mealThumb);
      $("#results").prepend(button);
    }
  });
}

$(".dropdown-container").on("click", ".categoryOption", categories);

// //Search Function
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

  //First API CALL TO SEARCH MEALS DB
  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    $("#results").empty();

    var results = response.meals;

    if (results === null) {
      //Second API CALL TO SEARCH Drinks DB
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
            "Ooops! Sorry there are no results for your search!"
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
              src: results[i].strDrinkThumb
            });
            button.append(mealThumb);
            $("#results").prepend(button);
            console.log(boxDiv);
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
        mealThumb.attr({ class: "card-img-top", src: results[i].strMealThumb });
        button.append(mealThumb);
        $("#results").prepend(button);
        console.log(boxDiv);
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
