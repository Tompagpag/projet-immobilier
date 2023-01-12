import User from "../../repository/Users.js";

export default class AdminUser {
  print(req, res) {
    (new User()).getUserList().then((users) => {
      // console.log(req.session.user)
      res.render('admin/users/list_users', {users});
    }).catch((error) => {
      res.render('authenticated/form', {user: {}, error})
    })
  }

  delete(req, res) {
    const userToDelete = new User();
    userToDelete.getUserById(req.params.id).then((user) => {
      userToDelete.deleteUser(req.params.id).then((affectedRows) => {
        req.flash('notify', `L'utilisateur ${user.firstname} ${user.lastname} a été supprimé.`);
        res.redirect('/admin/user');
      }).catch((error) => {
          res.render('admin/users/list_users', {user: {}, error});
      })
    })
  }
}
