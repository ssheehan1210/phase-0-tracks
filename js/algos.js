// RELEASE 0: FIND THE LONGEST PHRASE

// Write a function that takes an array of words or phrases and
// returns the longest word or phrase in the array.

// First, create the array of strings for the function.

var words = ["red", "blue", "green", "yellow", "white", "pink"];

// Create the function that will take the longest item in the array.
  // Steps:
    // Make a loop that will go through each item in the array.
    // Create a variable for the current "longest phrase" that starts out with a length value of zero.
    // Get the length value for the array item being checked.
    // If the length of the array item is bigger than the length of the current "longest phrase", then replace that variable's value with the array item.
    // Repeat this process until all the array items have been checked.
    // Return the string value of the current "longest phrase" after having gone through the looping process.
  // Output: the string with more characters than the other strings.

function Longest() {
	var longestWord = '';
	for (i = 0; i < words.length; i++) {
		words[i].length;
		if (words[i].length > longestWord.length) {
			longestWord = words[i];
		} else {
			longestWord;
		}
	}
	console.log("The longest phrase is " + longestWord + ".");
}

// Driver Code (test function on a few arrays):

Longest(words);
words = ["dog", "chicken", "cat", "sheep"];
Longest(words);
words = ["Sam", "Jack", "Joseph", "Catherine", "Thomas"];
Longest(words);



// RELEASE 1: FIND A KEY-VALUE MATCH

// Write a function that takes two objects and checks to see if the
// objects share at least one key-value pair. If at least one key-value
// pair matches between the objects, the function will return as true.
// If no pairs match, the function should return as false.

// First, create the two objects that you will be checking.

// Make your function that will take in the two objects to compare.
  // Input: the first object, the second object.
  // Steps:
    // Create a variable to indicate if a match exists and set it's default to false.
    // Use if/else statements to compare the two objects.
      // If there is a perfect match between the two objects, then the variable becomes true.
      // If there is a partial match between the two objects, then the variable becomes true.
      // If none of the above conditions apply, then the variable remains false.
    // Clarify what the value is for the true/false variable after finishing the if/else statements.
  // Output: true if there is at least one match between the objects, and false if there aren't.

function Match(firstObject, secondObject) {
	var matchFound = false;
	if (firstObject && secondObject) {
		matchFound = true;
	} else if (firstObject || secondObject) {
		matchFound = true;
	} else {
		matchFound = false;
	}
	console.log(matchFound);
}

// Driver Code (test both outcomes of the function):

Match({name: "Steven", age: 54}, {name: "Tamir", age: 54});
Match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});



// RELEASE 2: GENERATE RANDOM TEST DATA

// Write a function that takes an integer for length, and both builds
// and returns an array of strings of the given length (i.e. running
// the function with an argument of 3 should return an array with a
// length of 3 items). Each string should have randomly varying
// lengths, with at least one letter and no more than ten letters.

// Driver Code (generate an array, print it, feed it to the "longest
// word" function, print the result, and then repeat this 9 more times):
