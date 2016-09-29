console.log("The script is running!");

function hide_image(event) {
console.log("The click worked");
event.target.hidden = "true";  
}

function add_text(event) {
  document.getElementById("text").innerHTML = "You scared the cat away!!";
}

var photo = document.getElementById("cat");
photo.addEventListener("click", hide_image);


photo.addEventListener("click", add_text);