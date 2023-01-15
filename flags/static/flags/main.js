let selectedFlags = [];

function filterByColor(color) {
    let btnId = `btn-flag-${color}`
    let btnElement = document.getElementById(btnId);
    btnElement.classList.toggle("active-btn-flag");
    togglePropertyInList(btnId)

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

function togglePropertyInList(property) {
    // Remove the 'btn-'
    property = property.slice(4)
    if (selectedFlags.includes(property)) {
        selectedFlags = selectedFlags.filter(arrayItem => arrayItem !== property);
    } else {
        selectedFlags.push(property)
    }
}

function isFlagSelected(flagElement) {
    return selectedFlags.every(element => Array.from(flagElement.classList).includes(element));
}


Array.from(document.getElementsByClassName("btn-flag")).forEach(btn => btn.addEventListener("click", filterByColor));

/*
If len(selectedFlags) === 0






 */