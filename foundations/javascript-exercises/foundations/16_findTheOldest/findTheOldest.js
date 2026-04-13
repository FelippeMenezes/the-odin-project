const findTheOldest = function(peopleArray) {
    return peopleArray.reduce((oldestPerson, currentPerson) => {
        const currentYear = new Date().getFullYear();
        console.log(currentYear);

        let deathYear = 0;
        if (currentPerson.yearOfDeath) {
            deathYear = currentPerson.yearOfDeath;
        } else {
            deathYear = currentYear;
        };

        let deathYearOldest = 0;
        if (oldestPerson.yearOfDeath) {
            deathYearOldest = oldestPerson.yearOfDeath;
        } else {
            deathYearOldest = currentYear;
        };

        const currentAge = deathYear - currentPerson.yearOfBirth;
        const oldestPersonAge = deathYearOldest - oldestPerson.yearOfBirth;

        if (currentAge > oldestPersonAge) {
            return currentPerson;
        } else {
            return oldestPerson;
        };
    });
};

// Do not edit below this line
module.exports = findTheOldest;
