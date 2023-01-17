import Realties from "../../repository/Realties.js"

export default class AdminRealty {

  print(req, res) {
    (new Realties).getRealties().then((realties) => {
      res.render('admin/realties/list_realties', {realties});
    }).catch((error) => {
      res.render('admin/realties/list_realties', {realties:  {}, error})
    })
  }

  delete(req, res) {
    (new Realties).deleteRealty(req.params.id).then((affectedRows) => {
      req.flash('notify', `Le bien a été supprimé.`);
      res.redirect('/admin/realty');
    })
  }

  formNew(req, res) {
    res.render('admin/realties/new_realty');
  }
}
