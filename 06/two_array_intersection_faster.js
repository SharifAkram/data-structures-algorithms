function intersection(firstArray, secondArray) {
    let result = [];

    for (let i = 0; i < firstArray.length; i++) {
        for (let j = 0; j < secondArray.length; j++) {
            if (firstArray[i] == secondArray[j]) {
                result.push(firstArray[i]);
                break;
            }
        }
    }
    return result; s
}

console.log(intersection([1, 2, 3], [3, 2, 1, 4]))
console.log(intersection([1, 23, 3, - 7, 0.12], [3, 2, 1, 4, 23, 0.12]))
