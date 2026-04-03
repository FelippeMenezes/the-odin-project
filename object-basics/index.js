const person = {
    name: {
        first: "Bob",
        last: "Smith",
    },
    age: 32,
    bio: function () {
        console.log(`${this.name[0]} ${this.name[1]} is ${this.age} years old.`);
    },
    introduceYourself: function () {
        console.log(`Hello, I'm ${this.name[0]}`);
    },
};

const myDataName = "height";
const myDataValue = "1.75m";
person[myDataName] = myDataValue;
