
import connexion from "../../app/database_sql.js"

export default class User {
  createUser(req, res) {
    let { email, civility, lastname, firstname, phone, password } = req.body;

    civility === '1' ? civility = 'M' : civility = 'F'
    if (phone) {
      phone = null;
    }

    const sqlCreate = `INSERT INTO users
          (
              id, email, civility, lastname, firstname, password, phone
          )
          VALUES
          (
              ?, ?, ?, ?, ?, ?, ?
          )`;


    connexion.promise()
      .query(sqlCreate, [null , email, civility, lastname, firstname, password, phone])
        .then(console.log)
  }
}
