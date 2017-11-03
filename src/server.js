const express = require('express');
const log = require('log');
const conf = require('conf');

const app = express();
const port = process.env.PORT || conf.get('port');

app.get('/', function (req, res) {
  res.send('Hello World!')
})

app.get('/', function (req, res) {
  res.send('Hello me!')
})

app.listen(port, function () {
  console.log(`Example app listening on port ${port}!`)
})
