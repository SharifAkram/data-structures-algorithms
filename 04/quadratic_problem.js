// O(N**2)
// Very often (but not always), when an algorithm nests one loop inside another,
// the algorithm is O(N**2).

function hasDuplicateValue(array) {
    for(let i = 0; i < array.length; i++) {
        for(let j = 0; j < array.length; j++) {
            if(i !== j && array[i] === array[j]) {
                return true;
            }
        }
    }
    return false;
}

// function that tracks the algorithm's number of steps:

function hasDuplicateValue(array) {
    let steps = 0; // count of steps
    for(let i = 0; i < array.length; i++) {
        for(let j = 0; j < array.length; j++) {
            steps++; // increment number of steps
            if(i !== j && array[i] === array[j]) {
                return true;
            }
        }
    }
    console.log(steps); // print number of steps if no duplicates
    return false;
}

hasDuplicateValue([1,4,5,2,9]) // 25 comparisons
