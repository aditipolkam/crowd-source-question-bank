const pool = require('../config/db');
exports.helloworld = (req, res, next) => {
    pool.query('SELECT * FROM subjects', function (error, results, fields) {
        if (error) throw error;
        res.status(200).json({
            message: "Data fetched successfully!",
            results: results
         })
      });
}

