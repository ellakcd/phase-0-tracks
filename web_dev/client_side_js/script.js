console.log("js is running");



// var photo = document.getElementById("summer-pic");

// photo.style.border = "5px solid green";



function addRedBorder(event){
	event.target.style.border = "5px solid red";
	var newParagraph = document.createElement('p');
	var paraText = document.createTextNode("Suprise! Summer is here!");
	newParagraph.appendChild(paraText);
	var heading = document.getElementById("myHeader");
	heading.appendChild(newParagraph);
}

var photo = document.getElementById("summer-pic");
photo.addEventListener("click", addRedBorder);









