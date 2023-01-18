import Realties from "../../repository/Realties.js"
import Contacts from "../../repository/Contacts.js"
import UploadImageProductService from "../../services/UploadImageProduct.js"

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
    if(typeof req.session.user !== 'undefined') {
      const repoContact = new Contacts();
      let formContact = {
        civility: req.body.civility === '1' ? 'M' : 'F',
        firstname: req.body.firstname,
        lastname: req.body.lastname,
        email: req.body.email,
        phone: req.body.phone,
        mobile: req.body.mobile,
        info: req.body.info,
      };

      let formRealty =  {
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
      };


      repoContact.getContactByEmail(formContact.email).then(async (contact) => {
          req.body.user_id = req.session.user.id;
          // Existe en BDD
          if(contact && contact.id > 0) {
              formRealty.contact_id = contact.id;
              await repoContact.update(contact.id, formContact);
          }
          // N'existe pas en BDD du coup on le crée
          else {
              // On utilise le await pour attendre la création du contact afin d'obtenir son id
              // qui est nécessaire pour la création du bien
              formRealty.contact_id = await repoContact.add(formContact).then((row) => {
                  return row[0].insertId;
              });
          }
          const repoRealty = new Realties();
          repoRealty.add(formRealty).then((rows) => {
            let photos = [];
            // Enregistrement des images
            if(typeof req.files != 'undefined' && req.files != null) {
              if(typeof req.files.photos[0] === 'undefined') {
                req.files.photos = [req.files.photos];
              }
              const UploadImageProduct = new UploadImageProductService();
              if(typeof req.files.photos != 'undefined' && req.files.photos.length > 0) {

                Object.values(req.files.photos).forEach(file => {
                  photos.push(UploadImageProduct.moveFile(file, rows[0].insertId));
                });
                }
              }

            Promise.all(photos).then((values) => {
                req.flash('notify', `Le bien a été enregistré`);
                res.redirect('/admin/realty');
            });
          }).catch((err) => {
              res.render('admin/realties/new_realty', {
                  error: "Une erreur est survenue.",
                  realty: formRealty,
                  contact: formContact,
                  typeRealties: this.typeRealties
              });
          });
      });
    }
    else {
      req.flash('error', `Vous devez être connecté pour accéder à l'administration.`);
      res.redirect('/connexion');
    }
  }
}
