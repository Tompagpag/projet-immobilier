import connexion from "../../app/database_sql.js"

export default class Contacts {

  findEmail(query) {
    return connexion.promise().query("SELECT * FROM `contacts` WHERE `email` LIKE ? LIMIT 5", query+"%").then((rows) => {
      // console.log(rows[0])
      if (rows[0].length >= 1) {
        return rows[0]
      } else {
        return Promise.reject("Il n'y a pas de contact avec cet email.")
      }
    })
  }
}
