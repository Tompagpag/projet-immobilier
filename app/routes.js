import Home from "../src/controllers/Home.js"
import Register from "../src/controllers/Register.js"
import Authenticated from "../src/controllers/Authenticated.js"

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

};
