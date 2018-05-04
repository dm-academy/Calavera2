const express = require('express');
const app = express();

app.use('/', express.static((__dirname+'/public')));

// Constants
const PORT = 10003;
//const HOST = '0.0.0.0';

//ROUTE
// app.get('/', (req, res) => {
//  res.send(__dirname+'');
// });

app.get('/', (req, res) => {
	res.sendFile(__dirname+'/mn_attractions.html');
});



//app.listen(PORT, HOST);
//console.log(`Running on http://${HOST}:${PORT}`);

app.listen(PORT,function(){
	console.log("Server running and listening in port " + PORT);
});
