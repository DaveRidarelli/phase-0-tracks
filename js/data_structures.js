var horses = ["Ed", "Majestico", "Bob", "Bojack"];
var colors = ["orange", "turquoise", "magenta", "periwinkle"];

colors.push("forest green");
horses.push("Secretariat");

var horseyhash = {};

for (i = 0; i < horses.length; i++) {
	horseyhash[horses[i]] = colors[i];
}

console.log(horseyhash);

function Sweetcar(name, year, isClean) {
	
	this.name = name;
	this.year = year;
	this.isClean = isClean;
	
	this.start = function() { console.log ("VROOM VROOM!! \n"); };
	console.log("Car Manufactured");
}

console.log("Car Buildin' Time!\n");

var firstCar = new Sweetcar("Ferrari", 2008, true);
console.log(firstCar);
console.log("Look at this car go! ō=o");
firstCar.start();

console.log("Car Buildin' Time Round 2!\n");

var secondCar = new Sweetcar("Aston Martin", 2006, true);
console.log(secondCar);
console.log("Look at this baby go! ō==o");
secondCar.start();

console.log("Car Buildin' Time Final Round!\n");

var thirdCar = new Sweetcar("Honda", 1994, false)
console.log(thirdCar);
console.log("Look at this sweet ride go! ō==o");
thirdCar.start();