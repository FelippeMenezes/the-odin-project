// Grab the welcome-el paragraph and store it in a variable called welcomeEl
let welcomeEl = document.getElementById("welcome-el")

// Create two variables (name & greeting) that contains your name
let name = "Felippe";

// and the greeting we want to render on the page
let greeting = "Olá, meu nome é ";

// Render the welcome message using welcomeEl.innerText
welcomeEl.innerText = greeting + name + "!";
