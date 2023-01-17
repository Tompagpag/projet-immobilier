let inputEmail = document.getElementById('email_contact');
const ulResults = document.getElementById('results');

const showUserChoices = (data) => {
  data.forEach((element) => {
    ulResults.insertAdjacentHTML("beforeend",
      `<li>${element}</li>`);
  });
}

// const checkIfMultipleResult = (data) => {
//   data.length > 1 ? showUserChoices(data) : fillUserFields(data)
// }

inputEmail.addEventListener('keyup', (event) => {
  let query = event.currentTarget.value;
  if(query.length >= 3) {
    ulResults.innerHTML = "";
    fetch(`http://localhost:3000/admin/realty/findemail/${query}`)
      .then(response => response.json())
      .then(showUserChoices)
  }
})
