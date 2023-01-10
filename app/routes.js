import Home from "../src/controllers/Home.js"
import Register from "../src/controllers/Register.js"

export default (app) => {

    app.get('/', (req, res) => {
        // const Home = require('../src/controllers/Home.js');
        (new Home()).print(req, res);
    });

    app.get('/inscription', (req, res) => {
        // let Register = require('../src/controllers/Register.js');
        (new Register()).print(req, res);
      });

    app.post('/inscription', (req, res) => {
        // let Register = require('../src/controllers/Register.js');
        const newUser = (new Register()).process(req, res);
    })
};
