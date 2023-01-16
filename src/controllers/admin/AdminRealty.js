import Realties from "../../repository/Realties.js"

export default class AdminRealty {

  print(req, res) {
    (new Realties).getRealties().then((realties) => {
      res.render('admin/realties/list_realties', {realties});
    }).catch((error) => {
      res.render('admin/realties/list_realties', {realties:  {}, error})
    })
  }
}
