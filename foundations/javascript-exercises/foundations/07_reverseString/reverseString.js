const reverseString = function(str) {
    gnirts = [];
    for (let i = str.length - 1; i >= 0; i--) {
        gnirts.push(str[i]);
    }
    return gnirts.join('');
};

// Do not edit below this line
module.exports = reverseString;

reverseString('hello');
