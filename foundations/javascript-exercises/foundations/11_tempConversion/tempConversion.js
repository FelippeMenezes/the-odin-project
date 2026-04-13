const convertToCelsius = function(num) {
  let convertedToCelsius = (num - 32) / 1.8;

  if (convertedToCelsius === 0) {
    return 0;
  } else {
  return Number(convertedToCelsius.toFixed(1));
  };
};

const convertToFahrenheit = function(num) {
  let convertedToFahrenheit = (num * 1.8) + 32;

  if (convertedToFahrenheit === 0) {
    return 0;
  } else {
  return Number(convertedToFahrenheit.toFixed(1));
  };
};

// Do not edit below this line
module.exports = {
  convertToCelsius,
  convertToFahrenheit
};
