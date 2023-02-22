import * as dotenv from "dotenv";
dotenv.config();
import mysql2 from "mysql2"

export default mysql2.createPool({
    host     : process.env.SQL_HOST || 'localhost',
    user     : process.env.SQL_USER || 'root',
    password : process.env.SQL_PASSWORD || '',
    port     : process.env.SQL_PORT || 8889,
    database : process.env.SQL_DBNAME
});
