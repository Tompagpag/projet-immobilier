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
    return connexion.promise().query("SELECT `id`, `password`, `firstname`, `lastname` FROM `users` WHERE `email`=?", email).then((rows) => {
      if (rows[0].length == 1) {
        return rows[0][0]
      } else {
        return Promise.reject("L'utilisateur n'existe pas.")
      }
    })
  }

  getUserById(id) {
    return connexion.promise().query("SELECT `firstname`, `lastname` FROM `users` WHERE `id`=?", id).then((rows) => {
      if (rows[0].length == 1) {
        return rows[0][0]
      } else {
        return Promise.reject("L'utilisateur n'existe pas.")
      }
    })
  }

  getUserList() {
    return connexion.promise().query("SELECT `id`, `firstname`, `lastname`, `email`, `phone`, `civility` FROM `users` ORDER BY `firstname`").then((rows) => {
      if (rows[0].length >= 1) {
        return rows[0]
      } else {
        return Promise.reject("Il n'y a pas d'utilisateur en base de données.")
      }
    })
  }

  deleteUser(id) {
    return connexion.promise().query("DELETE FROM `users` WHERE `id`= ?", id).then((rows) => {
      return rows[0].affectedRows
    })
  }

}
