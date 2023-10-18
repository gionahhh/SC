// HW1

// First, save this scd file as a new file, renaming it with your Last name at the beginning of the file name (e.g. "Fieldsteel HW1.scd"). Write your answers and upload this renamed file to the course website for your submission.

// ----------
// Problem 1.
// The following code produces an error when evaluated. Remember to use the correct keystroke to evaluate the code. Correct the error and add a comment indicating the problem.

(
var oranges;
oranges = 3;
oranges = oranges * 2;
oranges = oranges - 1;
)

// have to define 'oranges' as a variable.
// Solved.




// ----------
// Problem 2.
// The following code produces an error when evaluated. Correct the error and add a comment indicating the problem.

(
var oldBalance, deposit, newBalance;
oldBalance = 5;
deposit = 100;
newBalance = oldBalance + deposit;
)

// have to put ';' after 'oldBalance = 5'.
// Solved.




// ----------
// Problem 3.
// The following code produces an error when evaluated. Correct the error and add a comment indicating the problem.

(
var classroomSize, numClasses, totalStudents;
classroomSize = 30;
numClasses = 4;
totalStudents = classroomSize * numClasses;
)

// variable 'totalStudent' was called with a wrong name: totalstudents.
// Solved.




// ----------
// Problem 4.
// The following code produces an error when evaluated. Correct the error and add a comment indicating the problem.

(
~func = {
	arg x = 5, y = 6, z = 7;
	var product;
	product = x * y * z;
};
)

// Solved.




// ----------
// Problem 5.
// Consider the following expression. "odd" returns a Boolean value indicating whether its receiver is an odd number. It is written exclusively in the "receiver-dot-method" syntax. Rewrite this expression so that it is exclusively in the "method(receiver)" syntax.

45.squared.odd;
// Mine
odd(45.squared);

// Solved.




// ----------
// Problem 6.
// Write a comment that explains why the following code expression produces an error message when evaluated.

45.odd.squared;

// It's 'receiver-dot-method' syntax but the order is reversed.
// Solved.






// ----------
// Problem 7.
// Create a function that accepts an Array as its input argument, and returns an Array that is identical except the first and last items have swapped places. If the input array contains exactly one or zero items, the function should return the exact same array it was given. After creating this function, include one or more additional lines of code that evaluate the function, to demonstrate that it works correctly.

y = [ 1, 3, 5, 7, 9 ];
~first = y[0];
~last = y.last;
y.put(0, ~last);
y.put(y.size - 1, ~first);

// Solved



// ----------
// Problem 8.
// Write a function that accepts a pitch and octave indicator. (e.g. "C4", "Bb5", "Ds3") and returns the corresponding MIDI note number. You can design your function to accept strings or symbols, but not necessarily both. I recommend using "s" for sharp instead of "#", but this is not required. For example, "C4" should return 60, "Cs4" should return 61, "B3" should return 59, and so on. Your function should be able to handle at least all 88 pitches present on a piano (A0 through C8).

// Some potentially useful methods:

// symbol-string conversion:

"hello".asSymbol.class;	// -> Symbol
\hello.asString.class;	// -> String

// "last" returns the last character in a string,
// and "digit" converts a character to an integer:

"C4".last.digit; 		// -> 4

// "drop" removes one or more characters from either end
// of a string, depending on the sign of the argument:

"supercollider".drop(1);	// -> "upercollider"
"supercollider".drop(-3);	// -> "supercolli"

