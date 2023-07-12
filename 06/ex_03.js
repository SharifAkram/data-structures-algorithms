/*
The following function checks whether an array of numbers contains a pair of
two numbers that add up to 10.
*/

function twoSum(array) {
    for (let i = 0; i < array.length; i++) {
        for (let j = 0; j < array.length; j++) {
            if (i !== j && array[i] + array[j] === 10) {
                return true;
            }
        }
    }
    return false;
}

console.log(twoSum([1, 2, 3, 2, 1.2, 3.4])) // false

/*
The important thing to note here is that the function ends as soon as we find
a pair that sums to 10. The best-case scenario, then, is when the first two
numbers add up to 10, since we can end the function before the loops even get
underway. An average-case scenario may be when the two numbers are somewhere in
the middle of the array. The worst-case scenarios are when there aren’t any two
numbers that add up to 10, in which case we must exhaust both loops completely.
This worst-case scenario is O(N2), where N is the size of the array.
*/
