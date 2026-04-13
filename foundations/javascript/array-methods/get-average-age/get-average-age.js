let john = { name: "John", age: 25 };
let pete = { name: "Pete", age: 30 };
let mary = { name: "Mary", age: 29 };

let arr = [ john, pete, mary ];

function getAverageAge(array) {
    let sum = 0;
    for (let i = 0; i < array.length; i++) {
        sum = sum + array[i].age;
    };
    return sum / array.length;
};

alert( getAverageAge(arr) ); // (25 + 30 + 29) / 3 = 28
