// O(N**2)
// two character strings

function wordBuilderTwo(array) {
    let collection = [];

    for (let i = 0; i < array.length; i++) {
        for (let j = 0; j < array.length; j++) {
            if (i !== j) {
                collection.push(array[i] + array[j]);
            }
        }
    }

    return collection;
}

console.log(wordBuilderTwo(["a", "b", "c", "d"]))

/*

[
  'ab', 'ac', 'ad',
  'ba', 'bc', 'bd',
  'ca', 'cb', 'cd',
  'da', 'db', 'dc'
]

*/

// O(N**3)
// three character strings

function wordBuilderThree(array) {
    let collection = [];

    for (let i = 0; i < array.length; i++) {
        for (let j = 0; j < array.length; j++) {
            for (let k = 0; k < array.length; k++) {
                if (i !== j && j !== k && i !== k) {
                    collection.push(array[i] + array[j] + array[k]);
                }
            }
        }
    }

    return collection;
}

console.log(wordBuilderThree(["a", "b", "c", "d"]))

/*

[
  'abc', 'abd', 'acb', 'acd',
  'adb', 'adc', 'bac', 'bad',
  'bca', 'bcd', 'bda', 'bdc',
  'cab', 'cad', 'cba', 'cbd',
  'cda', 'cdb', 'dab', 'dac',
  'dba', 'dbc', 'dca', 'dcb'
]

*/
