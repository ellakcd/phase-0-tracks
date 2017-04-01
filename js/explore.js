// initiate empty string
// iterate through input string backwards and add each character to the empty string
// return final string

function reverse(string){
	var reversed_string = ""
	for (var i = string.length - 1; i >= 0; i--){
		reversed_string += string[i];
	}
	return reversed_string;
}

var test_word = reverse("hello");

if (test_word.length >= 3){
	console.log(test_word);
}
else {
	console.log("pick a longer word!");
}