import * as dotenv from "dotenv";
dotenv.config();
import express from "express";
import { dirname } from "path";
import path from "path";
import { fileURLToPath } from "url";
import routes from './app/routes.js';
import session from "express-session";
import flash from "express-flash-messages";

const __dirname = dirname(fileURLToPath(import.meta.url));
const app = express();


//--------------------------------------------------------------------
//      Mise en place du moteur de template
//--------------------------------------------------------------------
app.set('views', path.join(__dirname, 'templates'));
app.set('view engine', 'pug');

//--------------------------------------------------------------------
//      Mise en place du répertoire static
//--------------------------------------------------------------------
app.use(express.static(path.join(__dirname, 'public')));

//--------------------------------------------------------------------
//      Ajout du midlleware express session
//--------------------------------------------------------------------
app.use(session({
    secret: process.env.APP_KEY, resave:false, saveUninitialized:false,
    cookie: {maxAge: 3600000}
}));

//--------------------------------------------------------------------
//      Exemple Session fictive
//--------------------------------------------------------------------
app.use((req,res,next) => {  req.session.user = { id: 15, firstname: 'tots', lastname : 'pagz' }; next(); });

//--------------------------------------------------------------------
//      Middleware pour transmettre les données à PUG (titre, session ...)
//--------------------------------------------------------------------
app.use((req, res, next) => {
  res.locals.session = req.session;
  // route => pour l'admin
  res.locals.route = req._parsedUrl.pathname;
  res.locals.websiteName = process.env.SITE_NAME;
  next();
})

//--------------------------------------------------------------------
//      Ajout du midlleware express flash messages
//--------------------------------------------------------------------
app.use(flash());

//--------------------------------------------------------------------
//      Middleware pour utiliser le body de la request
//--------------------------------------------------------------------
app.use(express.urlencoded({ extended: false })); // extented à true pour pouvoir faire des tableaux depuis les inputs
//app.use(express.json());

//--------------------------------------------------------------------
//      Chargement des routes
//--------------------------------------------------------------------
routes(app);

//--------------------------------------------------------------------
//     Ecoute du serveur HTTP
//--------------------------------------------------------------------
app.listen(process.env.PORT,() => {
  if (process.env.APP_ENV == 'dev' && process.send) {
    process.send('online');
  }
  console.log(`Le serveur est démarré : http://localhost:${process.env.PORT}`);
});

//--------------------------------------------------------------------
//      Sass Middleware
//--------------------------------------------------------------------
// const sassMiddleware = require('node-sass-middleware');
// app.use(sassMiddleware({
//     /* Options */
//     src: path.join(__dirname, 'build/'),
//     dest: path.join(__dirname, 'public/'),
//     debug: false,   // true pour voir les traitements effectués
//     indentedSyntax: false, // true Compiles files with the .sass extension
//     outputStyle: 'compressed'
// }));
