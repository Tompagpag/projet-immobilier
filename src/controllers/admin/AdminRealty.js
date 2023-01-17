import Realties from "../../repository/Realties.js"
import Contacts from "../../repository/Contacts.js"

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

  create(req, res) {
    // console.log(req.body.email)
    (new Contacts()).findEmail(req.body.email).then((row) => {

      const newRealty = {
        adress1 : req.body.adress1 || '',
        adress2 : req.body.adress2 || '',
        town : req.body.town || '',
        zipcode : req.body.zipcode || '',
        info_adress : req.body.info_adress || '',
        type : req.body.type || '',
        area : req.body.area || '',
        room : req.body.room || '',
        price : req.body.price || '',
        info : req.body.info_realty || '',
        user_id: req.session.user.id,
        contact_id: row[0].id,
      };
      (new Realties()).createNewRealty(newRealty).then((row) => {
        req.flash('notify', `Le bien a été créé.`);
        res.redirect('/admin/realty');
      }).catch(console.log)
    }).catch(console.log)
  }
}
