        const ul = document.querySelector('ul');
        const input = document.querySelector('input');
        const button = document.querySelector('button');

        function clickButton(event) {
            event.preventDefault();
            const li = document.createElement("li");

            const span = document.createElement("span");
            span.textContent = input.value;
            input.value = "";
            input.focus();
            const deleteButton = document.createElement("button");
            deleteButton.textContent = "Delete";

            li.appendChild(span);
            li.appendChild(deleteButton);
            ul.appendChild(li);

            deleteButton.addEventListener('click', function() {
                li.remove();
                input.focus();
            });
        };

        button.addEventListener('click', clickButton);
