
import connexion from "../../app/database_sql.js"

export default class User {
  createUser(user) {

    return connexion.promise().query("INSERT INTO `users` SET ?",  user);
            /*
        con.promise().query(
            "INSERT INTO `users` (`civility`, `firstname`, `lastname`, `email`, `phone`, `password`) VALUES (?,?,?,?,?,?)",
            [user.civility, user.firstname, user.lastname, user.email, user.phone, user.password]
        );*/
  }
}
