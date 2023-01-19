import connexion from "../../app/database_sql.js"

export default class Realties {

  add(realty) {
      return connexion.promise().query("INSERT INTO `realties` SET ?", realty);
  }

  getRealty(id) {
    return connexion.promise().query("SELECT `realties`.*,"
                                      +"`contacts`.`civility`, `contacts`.`firstname`, `contacts`.`lastname`, `contacts`.`email`, `contacts`.`phone`, `contacts`.`mobile`, `contacts`.`info`,"
                                        +"`users`.`firstname` AS `user_firstname`, `users`.`lastname` AS `user_lastname`"
                                          +"FROM `realties` INNER JOIN `contacts` ON `realties`.`contact_id`=`contacts`.`id` INNER JOIN `users` ON `realties`.`user_id`=`users`.`id`"
                                            +"WHERE `realties`.id = ?;", id).then((rows) => {
                                              return rows[0][0]
                                            })
  }

  getRealties() {
      return connexion.promise().query('SELECT `realties`.*, `users`.`firstname`, `users`.`lastname` FROM `realties` INNER JOIN `users` ON `realties`.`user_id`=`users`.`id` ORDER BY `user_id`;').then((rows) => {
        if (rows[0].length >= 1) {
          return rows[0]
        } else {
          return Promise.reject("Il n'y a pas de biens.")
        }
      })
  }

  deleteRealty(id) {
      return connexion.promise().query("DELETE FROM `realties` WHERE `id`= ?", id).then((rows) => {
        return rows[0].affectedRows;
      })
  }

  createNewRealty(realty) {
      return connexion.promise().query("INSERT INTO `realties` SET ?",  realty)
  }
}
