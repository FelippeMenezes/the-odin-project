const getTheTitles = function(bookArray) {
    // newArray = []
    // for (let i = 0; i < array.length; i++) {
    //     let object = array[i];
    //     newArray.push(object.title)
    // };
    // return newArray;

    return bookArray.map((bookObject) => bookObject.title);
};

// Do not edit below this line
module.exports = getTheTitles;
