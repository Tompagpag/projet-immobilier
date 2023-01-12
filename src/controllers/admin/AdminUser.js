import User from "../../repository/Users.js";

export default class AdminUser {
  print(req, res) {
    console.log("---- Enter in AdminUser ----");
    (new User()).getUserList().then((users) => {
      console.log(users);
      res.render('admin/users/list_users', {users});
    }).catch((error) => {
      res.render('authenticated/form', {user: {}, error})
    })
  }

}
