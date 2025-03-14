const app = require("./app");
const PORT = process.env.PORT || 3000;
const session = require('express-session')
const MySQLStore = require('express-mysql-session')(session);
const db = require('./db')

app.listen(PORT, function () {
  console.log("\n");
  console.log(
    "\x1b[35m%s\x1b[0m",
    "Server listening on http://localhost:" + PORT
  );
});
