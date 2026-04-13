const sumAll = function(a, b) {
    let sum = 0;
    if (a < 0 || b < 0 || !Number.isInteger(a) || !Number.isInteger(b)) {
        console.log('ERROR');
        return 'ERROR';
    } else if (a < b) {
        for (let i = a; i <= b; i++) {
            sum += i;
        }
        console.log(sum);
        return sum;
    } else if (a > b) {
        for (let i = b; i <= a; i++) {
            sum += i;
        }
        console.log(sum);
        return sum;
    }
};

sumAll(1, 4); // returns the sum of 1 + 2 + 3 + 4, which is 10.
// Do not edit below this line
module.exports = sumAll;
