const repeatString = function(str, num) {
    let arrayStr = [];
    if (num < 0) {
        return 'ERROR'
    } else if (num === 0){
        return '';
    } else {
        for(let i = 0; i < num; i++) {
            arrayStr += str;
        }
        return arrayStr;
    }
}

// Do not edit below this line
module.exports = repeatString;

repeatString('hey', 3);

