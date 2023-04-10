// Javascript implementation of Selection Sort

function selectionSort(array) {
    for(let i = 0; i < array.length - 1; i++) {
        let lowestNumberIndex = i;
        for(let j = i + 1; j < array.length; j++) {
            if(array[j] < array[lowestNumberIndex]) {
                lowestNumberIndex = j;
            }
        }

        if(lowestNumberIndex != i) {
            let temp = array[i];
            array[i] = array[lowestNumberIndex];
            array[lowestNumberIndex] = temp;
        }
    }
    return array;
}

console.log(selectionSort([1,100,2,63,552,25,1001,200,3.2,-5,-156]));

/*
[
    -156,  -5,    1,   2,
    3.2,  25,   63, 100,
    200, 552, 1001
]
*/
