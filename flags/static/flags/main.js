window.addEventListener('DOMContentLoaded', () => {
// Keeps track of selected buttons
    let selectedFlags = [];

    function filterByColor(color) {
        // 1. Add black borders to button to show they are selected
        let btnId = `btn-flag-${color}`
        let btnElement = document.getElementById(btnId);
        btnElement.classList.toggle("active-btn-flag");
        togglePropertyInList(btnId)
        // 2. Hide and un hide rows depending on the buttons pressed
        const elements = document.getElementsByClassName("flag-row");
        for (let i = 0; i < elements.length; i++) {
            const element = elements[i];
            if ((isFlagSelected(element)) || (selectedFlags.length === 0)) {
                element.classList.remove('hidden-flag');
            } else {
                element.classList.add('hidden-flag');
            }
        }
    }

    function resetFilters() {
        // 1. Empty selectedFlags array
        selectedFlags = []
        // 2. Uncheck the buttons
        const buttons = document.getElementsByClassName("btn-flag");
        for (let i = 0; i < buttons.length; i++) {
            let button = buttons[i]
            button.classList.remove('active-btn-flag');
        }
        // 3. Show hidden flags
        const elements = document.getElementsByClassName("flag-row");
        for (let i = 0; i < elements.length; i++) {
            const element = elements[i];
            element.classList.remove('hidden-flag');
        }
    }

    function togglePropertyInList(property) {
        // Remove the 'btn-' part of the class
        property = property.slice(4)
        // If property is not present in the list add it, if it is then remove it
        if (selectedFlags.includes(property)) {
            selectedFlags = selectedFlags.filter(arrayItem => arrayItem !== property);
        } else {
            selectedFlags.push(property)
        }
    }

    function isFlagSelected(flagElement) {
        // Compare the list of pressed buttons with the colors on the flag and see if they are all present
        return selectedFlags.every(element => Array.from(flagElement.classList).includes(element));
    }
})