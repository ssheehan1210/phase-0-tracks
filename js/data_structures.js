// Set up two separate arrays, one with colors and one with names.

var colorArray = ["blue", "green", "red", "cyan"];
var nameArray = ["Ed", "Dexter", "Epona", "Horace"];

// Write additional code that adds another color/name to the arrays.

colorArray.push("gold");
nameArray.push("Jim");

// Create objects that use horse names as the keys and the horse
// colors as the values (both array lengths must be the same).
  // Input: names, colors.
  // Steps:
    // Declare a horse as an object that has a name and color.
    // Cycle through each respective item in the name and color arrays based on index.
    // For each cycle based on the index number, add the name and color to a horse.
    // End the cycle based on the length of the arrays.
  // Output: objects with name/color combinations from any potential item within the arrays.

for (var i = 0; i < nameArray.length; i++) {
   	var newHorse = {};
   	newHorse[nameArray[i]] = colorArray[i];
	console.log(newHorse);
}

// Driver Code:

console.log(colorArray);
console.log(nameArray);

console.log("--------------------------------------------------");

// Write a constructor function for a car and give it a couple
// properties of various data types (at least one other function).
  // Input: primary color, current product rating, whether additional work is needed.
  // Steps:
    // Create the constructor function that each new car will run through.
    // Write in the three properties into the consructor function based on our inputs.
    // Within the constructor function, write in another function dedicated to testing the new car's engine.
    // Use an if/else argument where the car's engine will either start or not respond based on if addtional work is needed.
    // Be sure to print out when the initialization proccess is finished in order to keep better track of each car's construction.
    // Create three car instances with various input values to ensure program is running as intended.
  // Output: the status of the newly constructed car.

function Car(color, rating, noMoreWorkNeeded) {
	console.log("Next car in line:", this);

	this.color = color;
	this.rating = rating;
	this.noMoreWorkNeeded = noMoreWorkNeeded;

	this.engineTest = function() {
		if (this.noMoreWorkNeeded == true) {
			console.log("*engine starts* The car is starting as intended. No further work necessary for it to operate.");
		} else {
			console.log("*no response* The engine isn't starting. More work will be needed before this car can be considered operational.");
		}
	};

	console.log("CAR INITIALIZATION COMPLETE");
}

// Driver Code:

console.log("Beginning construction of the first car ...");
var firstCar = new Car("blue", 9, true);
console.log(firstCar);
console.log("Beginning test of the car's engine ...");
firstCar.engineTest();
console.log("--------------------------------------------------");

console.log("Beginning construction of the next car ...");
var secondCar = new Car("green", 6, true);
console.log(secondCar);
console.log("Beginning test of the car's engine ...");
secondCar.engineTest();
console.log("--------------------------------------------------");

console.log("Beginning construction of the next car ...");
var thirdCar = new Car("red", 7, false);
console.log(thirdCar);
console.log("Beginning test of the car's engine ...");
thirdCar.engineTest();
console.log("--------------------------------------------------");
