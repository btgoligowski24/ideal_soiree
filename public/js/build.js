function displayColor() {
  var colors = $(this).attr("data-name");

  var queryURL =
    "https://www.themealdb.com/api/json/v1/1/filter.php?c=" +
    colors +
    "&api_key=1";

  $.ajax({
    url: queryURL,
    method: "GET"
  }).then(function(response) {
    var results = response.data;
    console.log(response.data);

    for (var i = 0; i < results.length; i++) {
      var colorDiv = $("<div>");
      colorDiv.attr("class", "align");
      var colorImage = $("<img>");
      colorImage.attr("src", results[i].images.fixed_height_still.url);
      colorImage.attr("data-still", results[i].images.fixed_height_still.url);
      colorImage.attr("data-animate", results[i].images.fixed_height.url);
      colorImage.attr("data-state", "still");
      colorImage.attr("class", "gif");
      colorDiv.append(colorImage);
      $(".card-img-top").prepend(colorDiv);
    }
  });

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
}

displayColor();
