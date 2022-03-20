const { Toggle } = require('./config/db');

var middleware = (req, res, next) => {


    next();
}

module.exports = middleware;