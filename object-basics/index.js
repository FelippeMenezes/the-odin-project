let user = {
    name: "Felippe",
    age: 43,
    "like birds": true
};

alert(user);

alert(user.name);
alert(user.age);

user.isAdmin = true;
alert(user.isAdmin);

delete user.age;
alert(user.age);

alert(user["like birds"]);

// let key = prompt("What do you want know about the user?", "name");
// alert(user[key]);
alert(user.key); undefined

// let fruit = prompt("Wich fruit to buy?", "apple");
// let bag  = {
//     [fruit]: 5
// };
// alert(bag.apple);

let fruit = "apple";

let bag = {
    [fruit + 'Computers']: 5
};

alert(bag.appleComputers);

function makeUser(name, age) {
    return {
        name: name,
        age: age
    };
};

// let user = makeUser("Felippe", 43);
// alert(user.name);

// let user = { name: "Felippe", age: 43 };

// alert("name" in user);
// alert("blaBlaBla" in user);

// let user = { age: 43 };

// let key = "age";

// alert(key in user);

// let user = { name: "Felippe", age: 43, isAdmin: true}

// for (let key in user) {
//     alert( key );
//     alert( user[key]);
// };

// let = codes = {
//     "49": "Germany",
//     "41": "Switzerland",
//     "44": "Great Britain",
//     "1": "USA"
// };

// for ( let code in codes) {
//     alert(code);
// };

// let user = {
//     name: "Felippe",
//     surname: "Santana"
// };

// for ( let prop in user) {
//     alert(prop);
// };

// const person = {
//     name: {
//         first: "Felippe",
//         last: "Santana",
//     },
//     age: 43,
//     bio: function () {
//         console.log(`${this.name.first} ${this.name.last} is ${this.age} years old.`);
//     },
//     introduceYourself: function () {
//         console.log(`Hello, I'm ${this.name.first}`);
//     },
// };

const person = {
    name: ["Felippe", "Santana"],
    age: 43,
};

function logProperty(propertyName) {
    console.log(person[propertyName]);
}

logProperty("name");

person.age = 100;
person["name"]["last"] = "Menezes";
person["eyes"] = "Hazel";
person.farewell = function() {
    console.log("Bye everybody!")
};

function increaseCounterObject(objectCounter) {
  objectCounter.counter += 1;
}

function increaseCounterPrimitive(primitiveCounter) {
  primitiveCounter += 1;
}

const object = { counter: 0 };
let primitive = 0;

increaseCounterObject(object);
increaseCounterPrimitive(primitive);

let data = 42;
let dataCopy = data;

dataCopy = 43;

console.log(data);
console.log(dataCopy);

