/*
The following function returns whether or not a capital “X” is present
within a string.

What is this function’s time complexity in terms of Big O Notation?
*/

function containsX(string) {

    foundX = false;

    for (let i = 0; i < string.length; i++) {
        if (string[i] === "X") {
            foundX = true;
        }
    }

    return foundX;


}

/*
This algorithm has an efficiency of O(N), as the size of the array is N,
and the loop iterates through all N elements. This algorithm continues the
loop even if it finds an "X" before the end of the array. We can make the
code more efficient if we return true as soon as we find an "X":
*/

function containsX(string) {

    for (let i = 0; i < string.length; i++) {
        if (string[i] === "X") {
            return true;
        }
    }

    return false;
}

console.log(containsX("Xylophone"))
