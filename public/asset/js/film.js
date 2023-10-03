categoriaFilm.onclick = () => {
    let selectedRadioValue = $('input[name="radio-categories"]:checked').val();

    if (selectedRadioValue) {
        window.location.href = "/movies/" + selectedRadioValue;
    } else {
        alert("Seleziona una categoria prima di navigare!");
    }
}