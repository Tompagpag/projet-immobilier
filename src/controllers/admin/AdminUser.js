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

  editForm(req, res) {
    (new User()).getUserById(req.params.id).then((user) => {
      user.id = req.params.id;
      res.render('admin/users/edit_user', {user});
    }).catch((error) => {
      console.log(error);
    })
  }

    editUser(req, res) {
      const id = req.params.id;
      const { email, civility, lastname, firstname, phone } = req.body;
      (new User().updateUser(id, { email, civility, lastname, firstname, phone })).then(() => {
        req.flash('notify', `L'utilisateur ${firstname} ${lastname} a été mis à jour.`);
        res.redirect('/admin/user');
      })
    }
}
