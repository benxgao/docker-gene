var express = require('express')
var app = express()

app.get('/version', function (req, res) {
  res.send('1.0.0')
})

app.listen(3000, function () {
  console.log('BDD app listening on port 3000!')
})
