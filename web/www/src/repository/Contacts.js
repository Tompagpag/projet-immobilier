import connexion from "../../app/database_sql.js"

export default class Contacts {

  add(contact) {
      return connexion.promise().query("INSERT INTO `contacts` SET ?", contact);
  }

  update(id, contact) {
      return connexion.promise().query("UPDATE `contacts` SET ? WHERE `id`=?", [contact, id]).then((rows) => {
          if(rows[0].affectedRows == 1)  return Promise.resolve();
          return Promise.reject();
      });
  }

  getContacts() {
      return connexion.promise().query('SELECT * FROM `contacts` ORDER BY `lastname`;').then((rows) => {
        if (rows[0]) {
          return rows[0]
        } else {
          return Promise.reject("Il n'y a pas de contacts.")
        }
      })
  }

  getContactByEmail(email) {
      return connexion.promise().query("SELECT * FROM `contacts` WHERE `email`=?",  email).then((rows) => {
          if(rows[0].length == 1) return rows[0][0];
          return {};
      });
  }

  getContactByPartialEmail(email) {
      return connexion.promise().query("SELECT * FROM `contacts` WHERE `email` LIKE ? LIMIT 20",  email+'%').then((rows) => {
          if(rows[0].length >= 1) return Promise.resolve(rows[0]);
          return Promise.reject();
      });
  }
}
