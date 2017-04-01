


function longest_word(array) {
var current_word = "";
var current_length = 0;
for (var i = 0; i < array.length; i++){
	var test_word = array[i]
	if (test_word.length > current_length){
		current_word = test_word;
		current_length = test_word.length;
	}
}
return current_word;
}



function object_match(obj1, obj2){
	var keys1 = [];
	var keys2 = [];
	for (key in obj1){
		keys1.push(key);
	}
	for (key in obj2){
		keys2.push(key);
	}
	for (var i = 0; i < keys1.length; i ++){
		var key = keys1[i];
		if (keys2.indexOf(key) !== 0){
			val1 = obj1[key];
			val2 = obj2[key];
			if (val1 === val2){
				return true;
			}
		}
	}
	return false;
}









var test = longest_word(["long phrase","longest phrase","longer phrase"]);
console.log(test);

var test_2 = longest_word(["1", "22", "666666", "4444", "333"]);
console.log(test_2);

var test_3 = object_match({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(test_3);

var test_4 = object_match({name: "Steven", age: 53}, {name: "Tamir", age: 54});
console.log(test_4);
