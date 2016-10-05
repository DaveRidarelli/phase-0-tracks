// Accept a string into a function
// Identify length of string and set as a counter variable
// For current last letter in word identify and add to new string variable
// Loop backwards through string for all letters
// return new string variable

function reverse(word) {
	l = word.length
	var newword = ""
	for(var i = l - 1; i >= 0 ; i--) {
		  newword += (word[i]);
		 }
		return newword
}

//DRIVER CODE

d = reverse("Mr. Peanut Butter");


if (6 % 3 === 0) {
	console.log(d);
}
