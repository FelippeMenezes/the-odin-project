const output = document.querySelector(".output");
output.textContent = "";

let i = 10;

for (let i = 10; i >= 1; i--) {
    if (i === 10) {
        const para = document.createElement('p');
        para.textContent = "Countdown " + i;
        output.appendChild(para);
    } else if (i === 1) {
        const para = document.createElement('p');
        para.textContent = "Countdown " + i;
        output.appendChild(para);
    } else {
        const para = document.createElement('p');
        para.textContent = i;
        output.appendChild(para);
    }
}

