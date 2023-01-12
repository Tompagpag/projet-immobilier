const btnDanger = document.querySelectorAll(".btn-danger");

btnDanger.forEach((btn) => {
  btn.addEventListener('click', (e) => {
    e.preventDefault();
    if (!confirm("Souhaitez-vous vraiment supprimer cet utilisateur ?")) return false;
    location.href = e.currentTarget.parentElement.attributes.href.value;
  });
})
