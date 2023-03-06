const http = require("http");
const fs = require("fs");
const os = require("os");
const ip = require("ip");

http.createServer((req, res) => {
  if (req.url === "/") {
      fs.readFile("./public/index.html", "UTF-8", (err, body) => {
      res.writeHead(200, {"Content-Type": "text/html"});
      res.end(body);
    });
  } else if(req.url.match("/sysinfo")) {
      myHostName = os.hostname();
      myCpus = os.cpus().length;
      freeMemory = os.freemem();
      totMemory = os.totalmem();
      servUptime = os.uptime();
    html=`
    <!DOCTYPE html>
    <html>
      <head>
        <title>Node JS Response</title>
      </head>
      <body>
        <p>Hostname: ${myHostName}</p>
        <p>IP: ${ip.address()}</p>
        <p>Server Uptime: ${servUptime / 86400 + "Days"}</p>
        <p>Total Memory: ${totMemory * 0.000001 + "MB"}</p>
        <p>Free Memory: ${freeMemory * 0.000001 + "MB"}</p>
        <p>Number of CPUs: ${myCpus}</p>
      </body>
    </html>`
    res.writeHead(200, {"Content-Type": "text/html"});
    res.end(html);
  } else {
    res.writeHead(404, {"Content-Type": "text/plain"});
    res.end(`404 File Not Found at ${req.url}`);
  }
}).listen(3000);

console.log("Server listening on port 3000");