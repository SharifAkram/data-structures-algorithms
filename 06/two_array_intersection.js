/*
Suppose you are writing a JavaScript application, and somewhere in your code
you find that you need to get the intersection between two arrays.
The intersection is a list of all the values that occur in both of the arrays.
For example, if you have the arrays, [3, 1, 4, 2] and [4, 5, 3, 6],
the intersection would be a third array, [3, 4], since both of those values
are common to the two arrays.
*/

function intersection(firstArray, secondArray) {
    let result = [];

    for (let i = 0; i < firstArray.length; i++) {
        for (let j = 0; j < secondArray.length; j++) {
            if (firstArray[i] == secondArray[j]) {
                result.push(firstArray[i]);
            }
        }
    }
    return result;
}

console.log(intersection([1, 2, 3], [3, 2, 1, 4]))
console.log(intersection([1, 23, 3, - 7, 0.12], [3, 2, 1, 4, 23, 0.12]))
