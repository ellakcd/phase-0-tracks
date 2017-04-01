


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


test = longest_word(["long phrase","longest phrase","longer phrase"]);
console.log(test);

test_2 = longest_word(["1", "22", "666666", "4444", "333"]);
console.log(test_2);
