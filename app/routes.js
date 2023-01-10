import Home from "../src/controllers/Home.js"
import Register from "../src/controllers/Register.js"

export default (app) => {

    app.get('/', (req, res) => {
        (new Home()).print(req, res);
    });

    app.get('/inscription', (req, res) => {
        (new Register()).print(req, res);
      });

    app.post('/inscription', (req, res) => {
        const newUser = (new Register()).process(req, res);
    })
};
