//Side NavBar
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

var prevUrl = document.referrer;
var themeId = prevUrl
  .split("?")
  .slice(1)
  .toString()
  .split("&")
  .slice(0, 1)
  .toString();
var strIndex = themeId.indexOf("=") + 1;
themeId = themeId.slice(strIndex);

if (themeId === "") {
  $("#collapse1").addClass("show");
} else {
  $("#collapse" + themeId).addClass("show");
}

function addToTheme() {
  var themeId = $(this).attr("data-id");
  var themeName = $(this).attr("data-name");
  var queryStr = "?id=" + themeId + "&name=" + themeName;

  window.location.href = "/build" + queryStr;
}

$("#accordionExample").on("click", ".addtotheme", addToTheme);
