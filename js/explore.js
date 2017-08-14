// Pseudocode a function that takes a string as a parameter and
// reverses the string.

// Declare the string's variable.

var str = "anna";

// Establish a function that will be reversing the string. This will
// be done by a 'for loop' that will go through each string character.

function reverse(word) {

// Starting from the end of the string and going back towards the
// beginning, have the loop add each character into a single string.

	var reverseStr = "";
	for (var i = word.length - 1; i >= 0; i--) {
		reverseStr += word[i];
	}

// Ensure the printed return is the reversed string on a single line.

	return reverseStr;
}
// Take our string and use the function to reverse it (Driver Code).

var newStr = "";
newStr = reverse(str);

if (newStr == str) {
	console.log("This reversed string is the same as the original! Could this be a palindrome!?");
} else {
	console.log(newStr);
}
