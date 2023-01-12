const myModal = document.getElementById('myModal');
const myInput = document.getElementById('myInput');
const btnDanger = document.querySelectorAll(".btn-danger");

btnDanger.forEach((btn) => {
  btn.addEventListener('click', (e) => {
    const anchorElement = e.currentTarget.parentElement;
    const username = anchorElement.parentElement.parentElement.childNodes[1].innerText;
    const modalBody = document.querySelector(".modal-body");
    const deleteLink = document.getElementById('delete_link');

    modalBody.innerText = `Souhaitez-vous réellement supprimer l'utilisateur ${username}?`;
    deleteLink.href = anchorElement.attributes.href.value;
  })
})


myModal.addEventListener('shown.bs.modal', (e) => {
  myInput.focus()
})
