document.addEventListener('DOMContentLoaded',() =>  {

    // Récupération des informations d'un contact via son email
    if(typeof document.querySelector('#contact_by_email') != 'undefined') {
        let currentEmail = document.querySelector('#contact_by_email').value;
        document.querySelector('#contact_by_email').addEventListener('blur', (e) => {
            let email = e.currentTarget.value;
            // Expression reguliere pour tester l'adresse email
            if(/^(([^<>()[]\.,;:s@]+(.[^<>()[]\.,;:s@]+)*)|(.+))@(([[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email))
                if(email !== currentEmail) {
                    currentEmail = email;
                    fetch(`/admin/contact/byemail?email=${email}`).then((response) => response.json()).then(changeDataContact);
                }
        });

        const template = document.querySelector('#tplContact');
        document.querySelector('#contact_by_email').addEventListener('keyup', (e) => {
            let email = e.currentTarget.value;
            if(email.length >= 2) {
              fetch(`/admin/contact/search_partial_email?keyword=${email}`).then((response) => response.json()).then(response => {
                  console.log(response);
                  document.querySelector('#listContacts').innerHTML = '';
                  document.querySelector('#listContacts').style.display = 'block';
                  response.forEach((contact) => {
                      const clone = template.content.cloneNode(true);
                      clone.querySelector('li').textContent = `${contact.firstname} ${contact.lastname}`;
                      clone.querySelector('li').dataset.infos = JSON.stringify(contact);
                      clone.querySelector('li').addEventListener('click', (e) => {
                          let data = JSON.parse(e.currentTarget.dataset.infos);
                          document.querySelector('#contact_by_email').value = data.email;
                          changeDataContact(data);
                          document.querySelector('#listContacts').style.display = 'none';
                      })
                      document.querySelector('#listContacts').appendChild(clone);
                  });
              });
            }
        });
    }
});


function changeDataContact(response) {
  console.log(document.querySelector("#contact_civility").firstChild.value);
    document.querySelector("#contact_civility").firstChild.value = response.civility;
    if(document.querySelector('#contact_lastname').value === '')
        document.querySelector('#contact_lastname').value = response.lastname;
    if(document.querySelector('#contact_firstname').value === '')
        document.querySelector('#contact_firstname').value = response.firstname;
    if(document.querySelector('#contact_phone').value === '')
        document.querySelector('#contact_phone').value = response.phone;
    if(document.querySelector('#contact_mobile').value === '')
        document.querySelector('#contact_mobile').value = response.mobile;
    if(document.querySelector('#contact_info').value === '')
        document.querySelector('#contact_info').value = response.info;
}
