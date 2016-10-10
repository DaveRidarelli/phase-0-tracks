// Release:0 pseudocode

// accept array to comparison function
// filter through array using index number and incrementaion
// compare currrent index length with length of following index
// if current index of array is longer than previous longest index
// set that to the longest string variable
// display variable containing longest string after iteration is complete

function longCheck(array) {
	var longeststring = "";
	for(i = 0; i < (array.length); i++) {
		if (array[i].length > longeststring.length){
			longeststring = array[i];
		} 
	}
	console.log(longeststring)
}

// Release:1 pseudocode

// accept objects to matching function
// create matched variable set to false
// assign keys of an object to an array
// iterate through array comparing second arrays indexes for a match
// if match found switch matched variable to true
// if match not found return unchanged matched variable

function match(itemOne,itemTwo) {
	var matched = false;
	var itemOneKeys = Object.keys(itemOne);
	for (var i = 0; i < itemOneKeys.length; i++) {
		if (itemOne[String(itemOneKeys[i])] == itemTwo[String(itemOneKeys[i])]) {
			matched = true;
		}
	}
	return matched;
}

// Release:2 pseudocode

// accept integer to create loop to determine array length
// loop to create a random string restricted in length from 1 up to 10
// add letters to string using random number and alphabet string
// add that string to an array using index number associated with input integer.
// return completed array

function randomArray(number){
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	var finalArray = [];
	for (var i = 0; i < number; i++){
		var randomString = "";
		var stringLength = Math.round((Math.random() * 10) + 1);
		for (var x = 0; x < stringLength; x++){
			randomString = randomString + alphabet[Math.round((Math.random() * 25) + 0)];
		}
	finalArray[i] = randomString;
	}
	return finalArray;
}


// DRIVER CODE

var strings = ["apple", "peaches", "spooky ghost", "pumpkin pie"];
var morestrings = ["football", "rhubarb", "aliens exist", "mushroommushroom", "mario mario"];

new longCheck(strings)
new longCheck(morestrings)



var personOne = {name: "Bob", age: 26, lovesPizza: true};
var personTwo = {name: "Frank", age: 22, lovePizza: false};
var personThree = {name: "Aziz", age: 35, lovesPizza: true};

console.log(match(personOne,personTwo));
console.log(match(personOne,personThree));
console.log(match(personTwo,personThree));



for (i = 0; i < 10; i++){
	var array = randomArray(3)
	console.log("Array #" + (i + 1) + ": " + array);
}

// I wasn't able to check for the longest string for each generated array. 
// I kept getting an infinite loop at array #4 when i added console.log(longCheck(array)); 
// to the end of this loop





