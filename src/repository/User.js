require('dotenv').config()
const con = require('../../app/database_sql.js');

module.exports = class User {
  createUser(req, res) {
    let { email, civility, lastname, firstname, phone, password } = req.body;

    civility === '1' ? civility = 'M' : civility = 'F'
    if (phone) {
      phone = null;
    }

    const sql = `INSERT INTO users
          (
              id, email, civility, lastname, firstname, password, phone
          )
          VALUES
          (
              ?, ?, ?, ?, ?, ?, ?
          )`;


    con.promise()
      .query(sql, [null , email, civility, lastname, firstname, password, phone])
        .then(console.log)
  }
}
