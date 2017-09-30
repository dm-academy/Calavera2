var connect = require('connect');
var serveStatic = require('serve-static');
connect().use(serveStatic(__dirname)).listen(8080, function(){
    console.log('Server running on 8080...');
});

//var express = require('express');
//var app = express();
//app.get('/', function (req, res) {
//res.send('Hello World!');
//});
//app.listen(3003, function () {
//console.log('Example app listening on port 3003!');
//});

