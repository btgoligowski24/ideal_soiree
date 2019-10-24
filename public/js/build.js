//Global Variable for Food Category
var category;

//Render API Call filted by Category
function categories() {
  var queryURL =
    "https://www.themealdb.com/api/json/v1/1/filter.php?c=" +
    category +
    "&apikey=1";

  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    var results = response.meals;

    for (var i = 0; i < results.length; i++) {
      var boxDiv = $("<div>");
      boxDiv.attr("class", "box");
      var button = $("<button>");
      button.attr("class", "btn btn-light");
      boxDiv.append(button);
      var mealThumb = $("<img>");
      mealThumb.attr("class", "card-img-top");
      mealThumb.attr("src", results[i].strMealThumb);
      button.append(mealThumb);
      $("#results").prepend(button);

      console.log(boxDiv);
    }
  });
}

//Function to Clear Categories Upon Load
function replaceDiv() {
  $("#results").empty();
}

//BEEF Category
$("#beef").on("click", function() {
  replaceDiv();
  category = "Beef";
  categories();
});

//Chicken Category
$("#chicken").on("click", function() {
  replaceDiv();
  category = "Chicken";
  categories();
});

//Lamb Category
$("#lamb").on("click", function() {
  replaceDiv();
  category = "Lamb";
  categories();
});

//Pork Category
$("#pork").on("click", function() {
  replaceDiv();
  category = "pork";
  categories();
});

//Seadfood Category
$("#seafood").on("click", function() {
  replaceDiv();
  category = "Seafood";
  categories();
});

//Vegan Category
$("#vegan").on("click", function() {
  replaceDiv();
  category = "Vegan";
  categories();
});

//Vegetarian Category
$("#vegetarian").on("click", function() {
  replaceDiv();
  category = "vegetarian";
  categories();
});

//Appetizer Category
$("#appetizers").on("click", function() {
  replaceDiv();
  category = "Starter";
  categories();
});

//Sides Category
$("#sides").on("click", function() {
  replaceDiv();
  category = "Side";
  categories();
});

//Drinks Category
$("#dessert").on("click", function() {
  replaceDiv();
  category = "Dessert";
  categories();
});

//Drinks Category
$("#drink").on("click", function() {
  var queryURL =
    "https://www.thecocktaildb.com/api/json/v1/1/search.php?s&apikey=1";
  replaceDiv();

  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    var results = response.drinks;

    console.log(response);

    for (var i = 0; i < results.length; i++) {
      var colorDiv = $("<div>");
      colorDiv.attr("class", "box");
      var button = $("<button>");
      button.attr("class", "btn btn-light");
      colorDiv.append(button);
      var mealThumb = $("<img>");
      mealThumb.attr("class", "card-img-top");
      mealThumb.attr("src", results[i].strDrinkThumb);
      button.append(mealThumb);
      $("#results").prepend(button);
      console.log(colorDiv);
    }
  });
});

///Side NavBar
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
