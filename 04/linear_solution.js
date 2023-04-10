// Another implementation of hasDuplicateValue that does not use nested loops

function hasDuplicateValue(array) {
    let existingNumbers = [];
    for(let i = 0; i < array.length; i++) {
        if(existingNumbers[array[i]] === 1) {
            return true;
        } else {
            existingNumbers[array[i]] = 1;
        }
    }
    return false;
}

console.log(hasDuplicateValue([3, 5, 8])) // false

// N comparisons for N data elements
// this algorithm is 0(N)
// There is actually one disadvantage with this new implementation,
// namely that this approach will consume more memory than the first approach.

function hasDuplicateValueTwo(array) {
    let steps = 0;
    let existingNumbers = [];
    for(let i = 0; i < array.length; i++) {
        steps++;
        if(existingNumbers[array[i]] === 1) {
            return true;
        } else {
            existingNumbers[array[i]] = 1;
        }
    }
    console.log(steps);
    return false;
}

hasDuplicateValueTwo([1,4,5,2,9]) // 5

