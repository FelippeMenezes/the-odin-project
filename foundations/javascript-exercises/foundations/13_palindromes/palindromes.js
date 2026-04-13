const sentence = "SSSSSocorram-me, subi no ônibus em Marrocos.";

const palindromes = function (palindrome) {
    const alphanumerical = 'abcdefghijklmnopqrstuvwxyz0123456789';
    // console.log(palindrome);
    const lowerCase = palindrome.toLowerCase();
    // console.log(lowerCase);
    const splitedString = lowerCase.split("");
    // console.log(splitedString);
    const cleanedArray = splitedString.filter((character) => alphanumerical.includes(character));
    // console.log(cleanedArray);
    const slicedArray = cleanedArray.slice();
    // console.log(slicedArray);
    const reverseArray = slicedArray.reverse();
    // console.log(reverseArray);
    const string = cleanedArray.join("");
    // console.log(string);
    const reverseString = reverseArray.join("");
    // console.log(reverseString);
    if (string === reverseString) {
        const result = `The sentence "${palindrome}" is a palindrome.`;
        // console.log(result);
        return true;
    } else {
        const result = `The sentence "${palindrome}" is NOT a palindrome`;
        // console.log(result);
        return false;
    };
};

// console.log(palindromes(sentence));

// Do not edit below this line
module.exports = palindromes;
