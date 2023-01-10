module.exports = class Register {
    print(req, res) {
        res.render('register/form');
    }

    process(req, res) {
      console.log("---REQ.BODY:----",req.body);
      try {
        let User = require('../repository/User.js');
        // console.log(User);
        (new User()).createUser(req, res);
        res.status(201).redirect('/')
      } catch (error) {
        console.log(error);
      }
    }
};
