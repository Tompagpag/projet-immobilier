import User from "../../repository/Users.js";
import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import Cookies from "cookies";

export default class Authenticated {
    print(req, res) {
      if (req.session.user) {
        req.flash('notify', `Vous êtes déjà connecté.`);
        return res.redirect('/');
      }
      res.render('authenticated/form', {user: {}});
    }

    process(req, res) {
      if (req.session.user) {
        req.flash('notify', `Vous êtes déjà connecté.`);
        return res.redirect('/');
      }
      const newUserConnection = new User();
      newUserConnection.getUserByEmail(req.body.email).then((user) => {
        if (bcrypt.compareSync(req.body.password, user.password)) {

          // req.session.user = {
          //   id: user.id,
          //   firstname: user.firstname,
          //   lastname: user.lastname,
          // };
          let accessToken = jwt.sign({firstname: user.firstname, lastname: user.lastname, id : user.id}, process.env.JWT_SECRET, {expiresIn: 604800});
          new Cookies(req,res).set('access_token', accessToken, {httpOnly: true, secure: false });

          req.flash('notify', `Vous êtes maintenant connecté.`)
          res.status(201).redirect('/');
        } else {
          res.render('authenticated/form', {user: {email: req.body.email}, error: 'Mot de passe érroné !'});
        }
      }).catch((error) => {
          res.render('authenticated/form', {user: {email: req.body.email}, error});
      })
    }

    disconnect(req, res) {
      res.clearCookie("access_token");
      req.session.user = null;
      req.flash('notify', 'Vous êtes maintenant déconnecté.');
      res.redirect('/');
    }

};
