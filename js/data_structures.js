var colors_array = ["purple", "green", "brown", "white"];

var names_array = ["Ed", "Tom", "Lucy", "Charlie"];

colors_array.push("orange");
names_array.push("Bill");

console.log(colors_array);
console.log(names_array);




var horses = {};

if(colors_array.length === names_array.length){
for (var i = 0; i < colors_array.length; i++){
var name = names_array[i];
var color = colors_array[i];
horses[name] = color;
    console.log(horses);
}
}
else {
	console.log("Can't be grouped");
}

