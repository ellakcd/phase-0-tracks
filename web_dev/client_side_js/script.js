console.log("testing script");


function addBlueBorder(event) {
	event.target.style.border = "2px solid blue";
}


var photo = document.getElementById("photo_name");
photo.addEventListener("click", addBlueBorder);


var div = document.getElementById("intro");
div.children.each ...