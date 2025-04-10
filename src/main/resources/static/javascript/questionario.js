document.addEventListener("DOMContentLoaded", function () {
    const sections = document.querySelectorAll(".section"); // Seleciona todas as divs com a classe 'section'
    const buttons = document.querySelectorAll("button");
    const radios = document.querySelectorAll('input[name="pergunta10"][type="radio"]');


    sections.forEach((section, index) => {
        if (index !== 0) {
            section.style.display = "none";
        }
    });

    buttons.forEach((button, index) => {
        button.addEventListener("click", function (event) {
            if (button.type === "submit") {
                event.preventDefault();
            }

            if (index < sections.length - 1) {
                sections[index].style.display = "none";
                sections[index + 1].style.display = "block";
            }
        });
    });
});