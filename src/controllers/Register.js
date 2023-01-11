import User from "../repository/Users.js"

export default class Register {
    print(req, res) {
        res.render('register/form');
    }

    process(req, res) {
      try {
        const newUser = new User();
        const user = {
            civility : (req.body.civility == "1" ? 'M' : 'F'),
            firstname : req.body.firstname || '',
            lastname : req.body.lastname || '',
            email : req.body.email || '',
            phone : req.body.phone || '',
            password : req.body.password || ''
        };
        newUser.createUser(user);
        res.status(201).redirect('/')
      } catch (error) {
        console.log(error);
      }
    }
};
