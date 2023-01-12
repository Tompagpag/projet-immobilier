import User from "../../repository/Users.js"
import bcrypt from 'bcryptjs';

export default class Register {
    print(req, res) {
      if (req.session.user) {
        req.flash('notify', `Vous êtes déjà connecté.`);
        return res.redirect('/');
      }
      res.render('register/form', {user: {}});
    }

    process(req, res) {
      if (req.session.user) {
        req.flash('notify', `Vous êtes déjà connecté.`);
        return res.redirect('/');
      }
      const newUser = new User();
      const user = {
          civility : (req.body.civility == "1" ? 'M' : 'F'),
          firstname : req.body.firstname || '',
          lastname : req.body.lastname || '',
          email : req.body.email || '',
          phone : req.body.phone || '',
          password : req.body.password || ''
      };
      newUser.emailExists(user.email).then((exists) => {
        if (exists) {
          res.render('register/form', {user, error: 'Cet adresse email existe déjà.'});
        } else {
          user.password = bcrypt.hashSync(user.password, bcrypt.genSaltSync(10));
          newUser.createUser(user);
          req.flash('notify', 'Votre compte a bien été créé.');
          res.status(201).redirect('/');
        }
      }).catch((error) => {
        res.render('register/form', {user, error: 'Une erreur est survenue.'});
      });
    }
};
