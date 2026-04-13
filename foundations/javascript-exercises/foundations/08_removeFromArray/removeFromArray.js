const removeFromArray = function(arr, ...theArgs) {
    const newArray = [];

    theArgs.forEach((item) => {
        console.log(item);
        console.log(arr);
        while (arr.includes(item))  {
            arr.splice(arr.indexOf(item), 1);
            console.log(arr);
        };
    });
    console.log(arr);
    return arr;
};

// Do not edit below this line
module.exports = removeFromArray;

removeFromArray([1, 2, 2, 3], 2); // deve remover o 3 e retornar [1, 2, 4]
