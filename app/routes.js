import Home from "../src/controllers/Home.js"
import Register from "../src/controllers/connexion/Register.js"
import Authenticated from "../src/controllers/connexion/Authenticated.js"
import Dashboard from "../src/controllers/admin/Dashboard.js"
import AdminUser from "../src/controllers/admin/AdminUser.js"
import AdminRealty from "../src/controllers/admin/AdminRealty.js"
import AdminContact from "../src/controllers/admin/AdminContact.js"
import expressFileupload from "express-fileupload";
import jwt from 'jsonwebtoken';
import Cookies from "cookies";

export default (app) => {

  const verifyJWT  = (req, res, next) => {
    let token = new Cookies(req,res).get('access_token');
    // Si le cookie (access_token) n'existe pas
    if (typeof token == 'undefined' || token == '') {
      if (token == '') {
        res.clearCookie("access_token");
      }
      return res.sendStatus(401);
    }

    // sinon on vérifie le jwt
    jwt.verify(token, process.env.JWT_SECRET, (err, dataJwt) => {
      // Erreur du JWT (n'est pas un JWT, a été modifié, est expiré)
      if(err) {
          res.clearCookie("access_token");
          return res.sendStatus(403);
        }

        // A partir de là le JWT est valide on a plus qu'à vérifier les droits
        // Si on est admin
        // if(typeof dataJwt.roles != 'undefined' && dataJwt.roles[0] == 'admin') {
        //     return res.send(`Admin ${dataJwt.firstname}`);
        // }
        // Gestion des droits
        req.session.user = {
          username: dataJwt.username,
          id: dataJwt.id,
        }
    });

    next();
  }

  // home and connexion
    app.get('/', (req, res) => {
        (new Home()).print(req, res);
    });

    app.get('/inscription', (req, res) => {
        (new Register()).print(req, res);
    });

    app.post('/inscription', (req, res) => {
        const newRegister = new Register()
        newRegister.process(req, res);
    });

    app.get('/connexion', (req, res) => {
        let newAuthenticated = new Authenticated()
        newAuthenticated.print(req, res);
    });

    app.post('/connexion', (req, res) => {
        let newAuthenticated = new Authenticated()
        newAuthenticated.process(req, res);
    });

    app.get('/deconnexion', (req, res) => {
        (new Authenticated()).disconnect(req, res);
    });

  // admin
    app.get('/admin', verifyJWT, (req, res) => {
        (new Dashboard()).print(req, res);
    });

  // admin/user
    app.get('/admin/user', verifyJWT, (req, res) => {
        (new AdminUser()).print(req, res);
    });

    app.get('/admin/user/delete/:id', verifyJWT, (req,res) => {
        (new AdminUser()).delete(req, res);
    });

    app.get('/admin/user/edit/:id', verifyJWT, (req, res) => {
        (new AdminUser()).editForm(req, res);
    })

    app.post('/admin/user/update/:id', verifyJWT, (req, res) => {
        (new AdminUser()).editUser(req, res);
    })

  // admin/realty
    app.get('/admin/realty', verifyJWT, (req, res) => {
        (new AdminRealty()).print(req, res);
    })

    app.get('/admin/realty/delete/:id', verifyJWT, (req, res) => {
        (new AdminRealty()).delete(req, res);
    });

    app.get('/admin/realty/create', verifyJWT, (req, res) => {
        (new AdminRealty()).formNew(req, res);
    });

    app.get('/admin/realty/show/:id', verifyJWT, (req,res) => {
        (new AdminRealty()).showRealty(req, res);
    });

    app.post('/admin/realty/new',
    expressFileupload({createParentPath: true}),
    verifyJWT,
    (req, res) => {
        (new AdminRealty()).create(req, res);
    });

  //admin/contact
    app.get('/admin/contact/byemail', verifyJWT, (req, res) => {
        (new AdminContact()).ajaxContactByEmail(req, res);
    });

    app.get('/admin/contact/search_partial_email', verifyJWT, (req, res) => {
        (new AdminContact()).ajaxSearchContactByEmail(req, res);
    });

    app.get('/admin/contact', verifyJWT, (req, res) => {
        (new AdminContact()).print(req, res);
    })
};
