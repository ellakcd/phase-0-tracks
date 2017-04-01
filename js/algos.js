
// iterate through the input array and for every word, compare its length to the previously longest word's length, keeping track of the previously longest word and its length as variables




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

// make a keys array for each object
// iterate through one keys array, and for each of its keys that are included in the second array, check if their values object_match
// if ever they do, return true and stop checking
// otherwise, if you've checked all the options for a match, return false

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

// initialize at empty array
// however many times as the integer is large, perform the protocol for finding a new random word, and add that word to array
// find new word by picking a random length, and then going through alphabet string that many times and picking random letter
// return array of words

function random_test_generator(int){
	array = [];
	for (var i = 0; i < int; i ++){
		var alph = "abcdefghijklmnopqrstuvwxyz";
		var length = Math.random() * 10
		var random_word = "";
		for (var i = 0; i < length; i++){
			idx = Math.random() * 26;
			random_word += alph.charAt(idx);
		}
		array.push(random_word);
	}
	return array;
}








var test = longest_word(["long phrase","longest phrase","longer phrase"]);
console.log(test);

var test_2 = longest_word(["1", "22", "666666", "4444", "333"]);
console.log(test_2);

var test_3 = object_match({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(test_3);

var test_4 = object_match({name: "Steven", age: 53}, {name: "Tamir", age: 54});
console.log(test_4);

for (var i = 0; i < 10; i++){
	random_int = Math.random() * 10;
	random_test = random_test_generator(random_int);
	longest_test = longest_word(random_test);
	console.log(longest_test);
}
