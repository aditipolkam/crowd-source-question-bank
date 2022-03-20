const {router} = require('../CommonModule/Common');

var HelloWorld = async (req, res) => {
    res.send('Hello World');
}

router.get('/api/HelloWorld', HelloWorld);

module.exports = router;