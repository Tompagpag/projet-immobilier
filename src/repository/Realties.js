import connexion from "../../app/database_sql.js"

export default class Realties {
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
