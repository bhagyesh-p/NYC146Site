const registerRoutes = require('./register');
const loginRoutes = require('./login');
const path = require('path');

const constructorMethod = (app) => {
    app.use('/register', registerRoutes);
    app.use('/login', loginRoutes);

	app.use('*', (req, res) => {
		res.sendFile(path.resolve('static/login.html'));
	});
};

module.exports = constructorMethod;