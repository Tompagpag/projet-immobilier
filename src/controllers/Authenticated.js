import User from "../repository/Users.js";
import bcrypt from 'bcryptjs';

export default class Authenticated {
    print(req, res) {
      res.render('authenticated/form', {user: {}});
    }

    process(req, res) {
      const newUserConnection = new User()
      const user = {
        email: req.body.email,
        password: req.body.password,
      }
      newUserConnection.getUserByEmail(user.email).then((hash) => {
        if (bcrypt.compareSync(user.password, hash)) {
          req.session.user = user.email;
          req.flash('notify', `Vous êtes maintenant connecté.`)
          res.status(201).redirect('/');
        } else {
          res.render('authenticated/form', {user, error: 'Mot de passe érroné !'});
        }
      }).catch((error) => {
          res.render('authenticated/form', {user, error});
      })
    }

    disconnect(req, res) {
      req.session.user = null;
      req.flash('notify', 'Vous êtes maintenant déconnecté.');
      res.redirect('/');
    }

};
