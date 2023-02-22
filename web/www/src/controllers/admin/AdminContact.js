import Contacts from "../../repository/Contacts.js"

export default class AdminContact {

  print(request, response) {
      (new Contacts).getContacts().then((contacts) => {
        response.render('admin/contacts/list_contacts', {contacts});
      }).catch((error) => {
        response.render('admin/contacts/list_contacts', {contacts:  {}, error})
      })
  }

  ajaxContactByEmail(request, response) {
      if(typeof request.session.user !== 'undefined') {
          const repoContact = new Contacts();
          repoContact.getContactByEmail(request.query.email).then((contact) => {
              response.json(contact);
          });
      } else {
          response.json({'msg': 'ko'});
      }
  }

  ajaxSearchContactByEmail(request, response) {
      if(typeof request.session.user !== 'undefined') {
          const repoContact = new Contacts();
          repoContact.getContactByPartialEmail(request.query.keyword).then((contacts) => {
              response.json(contacts);
          }).catch((err) => {
              console.log(err);
          });
      } else {
          response.json({'msg': 'ko'});
      }
  }
}
