// countdown function using recursion

function countdown(number) {
    console.log(number);

    if (number === 0) {
        return;
    } else {
        countdown(number - 1);
    }
}
