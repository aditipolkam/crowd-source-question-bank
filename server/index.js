const path = require('path');
const express = require('express');
var cors = require('cors');
var bodyParser = require('body-parser');


const publicDirectoryPath = path.join(__dirname, './public');

const app = express();

app.use(express.static(publicDirectoryPath));
app.use(cors());
app.use(bodyParser.urlencoded({ limit: '500mb', extended: true }));
app.use(bodyParser.json());

app.use(require('./routes/Helloworld'));

const port = process.env.PORT || 3200;

app.listen(port, () => {;
    console.log('Server is up on port ' + port);
});