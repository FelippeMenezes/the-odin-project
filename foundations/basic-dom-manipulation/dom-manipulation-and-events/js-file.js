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

const btnInline = document.createElement("button");
btnInline.textContent = "Click Me";
btnInline.setAttribute("onclick", "alert('Hello World')");
document.body.appendChild(btnInline);

const btn = document.createElement("button");
btn.id = "btn";
btn.textContent = "Click Me";
document.body.appendChild(btn);

const btn2 = document.createElement("button");
btn2.id = "btn2";
btn2.textContent = "Click Me Too";
document.body.appendChild(btn2);

const container = document.createElement("div");
container.id = "container";
document.body.appendChild(container);

const one = document.createElement("button");
one.id = "one";
one.textContent = "One";

const two = document.createElement("button");
two.id = "two";
two.textContent = "Two";

const three = document.createElement("button");
three.id = "three";
three.textContent = "Three";

container.appendChild(one);
container.appendChild(two);
container.appendChild(three);

const link = document.createElement("a");
link.href = "https://www.javascripttutorial.net/";
link.textContent = "JS Tutorial";
document.body.appendChild(link);


btn.onclick = () => alert("Hello World");

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

const buttons = document.querySelectorAll("button");

buttons.forEach((button) => {
  button.addEventListener("click", () => {
    alert(button.id);
  });
});

link.addEventListener("click", function (event) {
  console.log("clicked");
  // event.preventDefault();
});
