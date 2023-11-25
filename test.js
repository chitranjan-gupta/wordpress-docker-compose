const http = require("http")

const server = http.createServer((req,res)=>{
    const headers = req.headers;
    console.log(headers)
    res.end("Yeah");
})

server.listen(3000)