const newSection = document.createElement("section");
document.body.appendChild(newSection);

const img = document.createElement("img");
img.src = "images/dinosaur.png";
img.alt = "A red Tyrannosaurus Rex: A two legged dinosaur standing upright like a human, with small arms, and a large head with lots of sharp teeth.";
newSection.appendChild(img);

const paragraph = document.createElement("p");
paragraph.textContent = "Here we will add a link to the ";
newSection.appendChild(paragraph);

const linkEl = document.createElement("a");
linkEl.href = "https://www.mozilla.org/";
linkEl.textContent = "Mozilla homepage";
paragraph.appendChild(linkEl);

linkEl.textContent = "Mozilla Developer Network";
linkEl.href = "https://developer.mozilla.org";

const para = document.createElement("p");
para.textContent = "We hope you enjoyed the ride.";
newSection.appendChild(para);

const text = document.createTextNode(
  " — the premier source for web development knowledge."
);

paragraph.appendChild(text);
