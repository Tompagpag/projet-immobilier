import Home from "../src/controllers/Home.js"
import Register from "../src/controllers/connexion/Register.js"
import Authenticated from "../src/controllers/connexion/Authenticated.js"
import Dashboard from "../src/controllers/admin/Dashboard.js"
import AdminUser from "../src/controllers/admin/AdminUser.js"
import AdminRealty from "../src/controllers/admin/AdminRealty.js"
import AdminContact from "../src/controllers/admin/AdminContact.js"

export default (app) => {

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
    app.get('/admin', (req, res) => {
      (new Dashboard()).print(req, res);
    });

  // admin/user
    app.get('/admin/user', (req, res) => {
      (new AdminUser()).print(req, res);
    });

    app.get('/admin/user/delete/:id', (req,res) => {
      (new AdminUser()).delete(req, res);
    });

    app.get('/admin/user/edit/:id', (req, res) => {
      (new AdminUser()).editForm(req, res);
    })

    app.post('/admin/user/update/:id', (req, res) => {
      (new AdminUser()).editUser(req, res);
    })

  // admin/realty
    app.get('/admin/realty', (req, res) => {
      (new AdminRealty()).print(req, res);
    })

    app.get('/admin/realty/delete/:id', (req, res) => {
      (new AdminRealty()).delete(req, res);
    });

    app.get('/admin/realty/create', (req, res) => {
      (new AdminRealty()).formNew(req, res);
    });

    app.post('/admin/realty/new', (req, res) => {
      (new AdminRealty()).create(req, res);
    });


    app.get('/admin/realty/findemail/:query', (req, res) => {
      (new AdminContact()).search(req, res);
    })
};
