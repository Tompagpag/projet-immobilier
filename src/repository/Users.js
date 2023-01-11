import connexion from "../../app/database_sql.js"


export default class User {
  createUser(user) {
    return connexion.promise().query("INSERT INTO `users` SET ?",  user);
    /*
    connexion.promise().query(
      "INSERT INTO `users` (`civility`, `firstname`, `lastname`, `email`, `phone`, `password`) VALUES (?,?,?,?,?,?)",
      [user.civility, user.firstname, user.lastname, user.email, user.phone, user.password]
      );*/
  }

  emailExists(email) {
    return connexion.promise().query("SELECT `email` FROM `users` WHERE `email`=?",  email).then((rows) => {
      return (rows[0].length >= 1)
    });
  }

  getUserByEmail(email) {
    return connexion.promise().query("SELECT `password` FROM `users` WHERE `email`=?", email).then((rows) => {
      if (rows[0].length) {
        return rows[0][0].password
      } else {
        return Promise.reject("L'utilisateur n'existe pas.")
      }
    })
  }

    // userPassword(email, givenPassword) {
    //   return connexion.promise().query("SELECT `password` FROM `users` WHERE `email`=?", email).then((rows) => {
    //     return (bcrypt.compareSync(givenPassword, rows[0].password))
    //   })
    // }

  }