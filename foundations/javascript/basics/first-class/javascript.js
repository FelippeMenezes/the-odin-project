let firstName = "Felippe";
let lastName = "Santana";

console.log(firstName);
console.log(lastName);

let age = 11;
console.log(age);

age = 43;
console.log(age);

const pi = 3.14;
// pi = 10 - A variable created with "const" cannot have a new value assigned to it.
console.log(pi);

console.log(27 + 93);

console.log(1 + 2 + 3 + 4 + 5 + 6);

console.log((4 + 6 + 9) / 77);

let a = 5;
console.log(a);

a = 10;
console.log(a);

let b = 7 * a;
console.log(b);

let max = 57;
let actual = max - 13;
let percentage = actual / max;
console.log(percentage);

const button = document.querySelector("button");
let count = 0;

button.addEventListener("click", (event) => {
      count++;
    button.textContent = `Click count: ${count}`;
});

