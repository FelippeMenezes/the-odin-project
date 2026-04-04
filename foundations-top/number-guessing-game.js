let randomNumber = Math.floor(Math.random() * 100) + 1;
console.log(randomNumber);
let guessCount = 1;
let resetButton;

function checkGuess() {
const userGuess = Number(guessField.value);
if (guessCount === 1) {
    guesses.textContent = "Previous guesses: ";
}
guesses.textContent += userGuess + " ";

if (userGuess === randomNumber) {
    lastResult.textContent = "Congratulations! You got it right!";
    lastResult.style.backgroundColor = "green";
    lowOrHi.textContent = "";
    setGameOver();
} else if (guessCount === 10) {
    lastResult.textContent = "!!!GAME OVER!!!";
    setGameOver();
} else {
    lastResult.textContent = "Wrong!";
    lastResult.style.backgroundColor = "red";
    if (userGuess < randomNumber) {
    lowOrHi.textContent = "Last guess was too low!";
    } else if (userGuess > randomNumber) {
    lowOrHi.textContent = "Last guess was too high!";
    }
}

guessCount++;
guessField.value = "";
guessField.focus();
}

function setGameOver() {
guessField.disabled = true;
guessSubmit.disabled = true;
resetButton = document.createElement("button");
resetButton.textContent = "Start new game";
document.body.appendChild(resetButton);
resetButton.addEventListener("click", resetGame);
}

function resetGame() {
guessCount = 1;


for (const resetPara of resetParas) {
    resetPara.textContent = "";
}
resetButton.parentNode.removeChild(resetButton);

guessField.disabled = false;
guessSubmit.disabled = false;
guessField.value = "";
guessField.focus();

lastResult.style.backgroundColor = "white";

randomNumber = Math.floor(Math.random() * 100) + 1;
console.log(randomNumber);
}

document.body.textContent = "";

const h1 = document.createElement("h1");
h1.textContent = "Number guessing game";
document.body.appendChild(h1);

const p = document.createElement("p");
p.textContent = "We have selected a random number between 1 and 100. See if you can guess it in 10 turns or less. We'll tell you if your guess was too high or too low.";
document.body.appendChild(p);

const formDiv = document.createElement("div");
formDiv.classList.add("form");
document.body.appendChild(formDiv);

const label = document.createElement("label");
label.setAttribute("for", "guessField");
label.textContent = "Enter a guess: ";
formDiv.appendChild(label);

const inputText = document.createElement("input");
inputText.type = "text";
inputText.id = "guessField";
inputText.classList.add("guessField");
formDiv.appendChild(inputText);

const inputSubmit = document.createElement("input");
inputSubmit.type = "submit";
inputSubmit.value = "Submit guess";
inputSubmit.classList.add("guessSubmit");
formDiv.appendChild(inputSubmit);

const resultDiv = document.createElement("div");
resultDiv.classList.add("resultParas");
document.body.appendChild(resultDiv);

const guessesP = document.createElement("p");
guessesP.classList.add("guesses");
resultDiv.appendChild(guessesP);

const lastResultP = document.createElement("p");
lastResultP.classList.add("lastResult");
resultDiv.appendChild(lastResultP);

const lowOrHiP = document.createElement("p");
lowOrHiP.classList.add("lowOrHi");
resultDiv.appendChild(lowOrHiP);

const guesses = document.querySelector(".guesses");
const lastResult = document.querySelector(".lastResult");
const lowOrHi = document.querySelector(".lowOrHi");
const guessSubmit = document.querySelector(".guessSubmit");
const guessField = document.querySelector(".guessField");
const resetParas = document.querySelectorAll(".resultParas p");

guessSubmit.addEventListener("click", checkGuess);
