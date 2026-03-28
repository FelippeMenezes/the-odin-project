// node exercises.js - CLI

let add7 = (number) => {
    return number + 7;
}
console.log(add7(5));
console.log(add7(7));
console.log(add7(14));

function multiply(a, b) {
    return a * b;
}
console.log(multiply(5, 5));
console.log(multiply(10, 4));
console.log(multiply(4, 7));

function capitalize(str) {
    return str.charAt(0).toUpperCase() + str.slice(1);
}

console.log(capitalize('abcd'));
console.log(capitalize('hello'));

let lastLetter = (str) => str.slice(-1);

console.log(lastLetter('abcd'));
console.log(lastLetter('hello'));
