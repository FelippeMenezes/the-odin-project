const fibonacci = function(number) {
    number = Number(number);

    if (number < 0) return "OOPS";
    if (number === 0) return 0;
    if (number === 1) return 1;

    let fibonacciSequence = [0, 1];

    for (let i = 2; i <= number; i++) {
        fibonacciSequence[i] = fibonacciSequence[i - 1] + fibonacciSequence[i - 2];
    }

    return fibonacciSequence[number];
};

// Do not edit below this line
module.exports = fibonacci;
