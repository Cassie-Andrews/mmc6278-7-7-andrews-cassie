const app = require("./app");
const PORT = process.env.PORT || 3000;

const session = require('express-session')
const MySQLStore = require('express-mysql-session')(session);
const db = require('./db')

const sessionStore = new MySQLStore({}, db);
app.use(session({
	key: 'session_cookie',
	secret: process.env.SESSION_SECRET,
	store: sessionStore,
	resave: false,
	saveUninitialized: false,
	proxy: true,
	cookie: {
		maxAge: 1000 * 60 * 60 * 24
	}
}));

app.listen(PORT, function () {
  console.log("\n");
  console.log(
    "\x1b[35m%s\x1b[0m",
    "Server listening on http://localhost:" + PORT
  );
});
