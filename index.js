const express = require('express');
const { appendFile } = require('fs');
const app = express();
const port = 1010;

app.use(express.static('public'));

app.get("/", (req, res)=>{
    res.sendFile(__dirname + "/index.html");
});

app.listen(port, ()=>{
    console.log("listenig on port " + port);
})
