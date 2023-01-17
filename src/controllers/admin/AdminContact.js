import Contacts from "../../repository/Contacts.js"

export default class AdminContact {

  search(req, res) {
    let query = req.params.query;
    try {
      (new Contacts()).findEmail(query).then((data) => {
        res.json(data);
      })
    } catch (error) {
        console.log(error);
    }
  }
}
