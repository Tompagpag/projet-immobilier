import User from "../repository/User.js"

export default class Register {
    print(req, res) {
        res.render('register/form');
    }

    process(req, res) {
      console.log("---REQ.BODY:----",req.body);
      try {
        (new User()).createUser(req, res);
        res.status(201).redirect('/')
      } catch (error) {
        console.log(error);
      }
    }
};
