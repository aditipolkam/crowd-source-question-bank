const express = require('express');

const helloworld = require('../controllers/Helloworld');

const router = express.Router();


router.get('/helloworld', helloworld.helloworld);

module.exports = router;