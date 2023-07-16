// N + (N - 1) + (N - 2) + (N - 3) ... + 1 = N**2 / 2 => O(N**2)

function twoNumberProducts(array) {
    let products = [];

    // Outer array:
    for (let i = 0; i < array.length - 1; i++) {

        // Inner array, where j always begins one index
        // to the right of i:
        for (let j = i + 1; j < array.length; j++) {
            products.push(array[i] * array[j]);
        }
    }

    return products;
}

console.log(twoNumberProducts([1, 2, 3, 4, 5]))

/*

[
  2,  3,  4,  5,  6,
  8, 10, 12, 15, 20
]

*/

// Dealing with multiple datasets
// This is a new concept: whenever we have two distinct datasets that have
// to interact with each other through multiplication, we have to identify both
// sources separately when we describe the efficiency in terms of Big O.
// O(N * M) => range between O(N) and O(N**2)


function twoArrayProducts(array1, array2) {
    let products = [];

    for (let i = 0; i < array1.length; i++) {
        for (let j = 0; j < array2.length; j++) {
            products.push(array1[i] * array2[j]);
        }
    }

    return products;
}

console.log(twoArrayProducts([1, 2, 3], [10, 100, 1000]))

/*

[
  10, 100, 1000,
  20, 200, 2000,
  30, 300, 3000
]

*/
