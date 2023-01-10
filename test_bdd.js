import * as dotenv from "dotenv";
dotenv.config();
import connexion from "./app/database_sql.js"

connexion.promise().query("SELECT 'connexion SQL OK'").then(([rows]) => {
    console.log(Object.values(rows[0]));
    process.exit();
});
