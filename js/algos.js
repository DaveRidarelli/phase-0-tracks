//pass array to comparison function
//filter through array using index number and incrementaion
//compare currrent index length with length of following index
//if current index of array is longer than previous longest index
//set that to the longest string variable
//display variable containing longest string after iteration is
//complete


var strings = ["apple", "peaches", "spooky ghost", "pumpkin pie"];
var longeststring = "";

function longCheck(array) {
	for(i = 0; i < (array.length); i++) {
		if (array[i].length > longeststring.length){
			longeststring = array[i];
		} 
	}
	console.log(longeststring)
}

new longCheck(strings)
