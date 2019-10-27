// Get references to page elements
var $newBuildThemeName = $("#theme_name");
var $newBuildThemeDesc = $("#theme_description");
var $submitBtn = $("#submitTheme");

// The API object contains methods for each kind of request we'll make
var API = {
  saveBuildTheme: function(newTheme) {
    return $.ajax({
      headers: {
        "Content-Type": "application/json"
      },
      type: "POST",
      url: "/api/themes",
      data: JSON.stringify(newTheme)
    });
  },
  getBuildTheme: function() {
    return $.ajax({
      url: "/api/themes",
      type: "GET"
    });
  },
  deleteBuildTheme: function(id) {
    return $.ajax({
      url: "/api/themes" + id,
      type: "DELETE"
    });
  }
};

// handleFormSubmit is called whenever we submit a new newTheme
// Save the new newTheme to the db and refresh the list
var handleFormSubmit = function(event) {
  event.preventDefault();
  var newTheme = {
    name: $newBuildThemeName.val().trim(),
    description: $newBuildThemeDesc.val().trim()
  };
  if (!newTheme.name) {
    alert("You must enter a theme name!");
    return;
  }
  API.saveBuildTheme(newTheme)
    .then(function(data) {
      var queryStr = "?id=" + data.id + "&name=" + data.name;
      window.location.href = "/build" + queryStr;
    })
    .catch(function(err) {
      alert(err.responseText);
    });

  $newBuildThemeName.val("");
  $newBuildThemeDesc.val("");
};

// Add event listeners to the submit and delete buttons
$submitBtn.on("click", handleFormSubmit);
