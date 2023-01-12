import Home from "../src/controllers/Home.js"
import Register from "../src/controllers/connexion/Register.js"
import Authenticated from "../src/controllers/connexion/Authenticated.js"
import Dashboard from "../src/controllers/admin/Dashboard.js"
import AdminUser from "../src/controllers/admin/AdminUser.js"

export default (app) => {

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

    app.get('/admin', (req, res) => {
      (new Dashboard()).print(req, res);
    });

    app.get('/admin/user', (req, res) => {
      (new AdminUser()).print(req, res);
    });

    app.get('/admin/user/delete/:id', (req,res) => {
      (new AdminUser()).delete(req, res);
    });

    // app.delete('/admin/user/delete/:id', (req,res) => {

    // });

};
