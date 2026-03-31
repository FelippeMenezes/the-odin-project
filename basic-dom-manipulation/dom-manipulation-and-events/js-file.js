const p = document.createElement("p");
p.textContent = "Hey I’m red!";
p.style.color = "red";
document.body.appendChild(p);

const h3 = document.createElement("h3");
h3.textContent = "I’m blue";
h3.style.color = "blue";
document.body.appendChild(h3);

const div = document.createElement("div");
div.style.background = "pink";
div.style.border = "2px solid black";

const h1 = document.createElement("h1");
h1.textContent = "I’m in a div";

const p2 = document.createElement("p");
p2.textContent = "Me too";

div.appendChild(h1);
div.appendChild(p2);
document.body.appendChild(div);

const btn = document.querySelector("#btn");
btn.onclick = () => alert("Hello World");

const btn2 = document.querySelector("#btn2");
btn2.addEventListener("click", () => {
  alert("Hello World");
});

btn2.addEventListener("click", function (e) {
  console.log(e);
});

btn2.addEventListener("click", function (e) {
  console.log(e.target);
});

btn2.addEventListener("click", function (e) {
  e.target.style.background = "blue";
});

// buttons is a node list. It looks and acts much like an array.
const buttons = document.querySelectorAll("button");

// we use the .forEach method to iterate through each button
buttons.forEach((button) => {
  // and for each one we add a 'click' listener
  button.addEventListener("click", () => {
    alert(button.id);
  });
});

let link = document.querySelector('a');

link.addEventListener('click',function(event) {
    console.log('clicked');
    // event.preventDefault();
});
