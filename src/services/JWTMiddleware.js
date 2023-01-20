import jwt from 'jsonwebtoken';
import Cookies from "cookies";

export const adminControl = (req, res, next) => {
    // Récupération du token dans le cookie
    let token = new Cookies(req,res).get('access_token');
    // Si le cookie (access_token) n'existe pas
    if (typeof token === 'undefined') {
        res.sendStatus(401);
        return;
    }
    // sinon on vérifie le jwt
    jwt.verify(token, process.env.JWT_SECRET, (err, dataJwt) => {
        // Erreur du JWT (n'est pas un JWT, a été modifié, est expiré)
        if(err) {
            res.clearCookie("access_token");
            res.sendStatus(403);
            return;
        }

        // Gestion des droits
        req.session.user = {
            firstname : dataJwt.firstname,
            lastname : dataJwt.lastname,
            id : dataJwt.id
        };
        next();
    });
};

export const jwtControl = (req, res, next) => {
    // Récupération du token dans le cookie
    let token = new Cookies(req,res).get('access_token');
    // Si le cookie (access_token) n'existe pas
    if (typeof token !== 'undefined') {
        // sinon on vérifie le jwt
        jwt.verify(token, process.env.JWT_SECRET, (err, dataJwt) => {
            // Erreur du JWT (n'est pas un JWT, a été modifié, est expiré)
            if(err) {
                res.clearCookie("access_token");
                delete req.session.user;
                res.redirect('/connexion');
                return;
            }
            // Gestion des droits
            req.session.user = {
                firstname : dataJwt.firstname,
                lastname : dataJwt.lastname,
                id : dataJwt.id
            };
            next();
        });
    } else {
        next();
    }
};
