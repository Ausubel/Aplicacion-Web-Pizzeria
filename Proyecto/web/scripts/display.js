const hideButton = document.getElementById('hide-button');
// let hideImage = document.getElementById('hide-image');

/* Ocultando usando display */
hideButton.addEventListener('click', () => {
    let hideImage = document.getElementById('hide-image');
    currentDisplay = hideImage.style.display;

    if (currentDisplay === 'none') {
        hideImage.style.display = 'block';
        document.getElementById('details').style.display = 'none';
        document.getElementById('titulo').style.display = 'block';
        document.getElementById('info').style.display = 'block';
    } else {
        hideImage.style.display = 'none';
        document.getElementById('titulo').style.display = 'none';
        document.getElementById('info').style.display = 'none';
        document.getElementById('details').style.display = 'block';
        
    }
});

