'use strict';

const express = require('express');

// Constants
const PORT = 8010;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.sendFile(__dirname+'/welcomehome.html');
});

app.listen(PORT, function(){
console.log(`Server listening on port` + PORT);
});
