const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');
const data = require('../data');
const userData = data.users;

router.post('/', async (req, res) => {
	const { email, password } = req.body;
    let match = false;
    const userList = await userData.getAllUsers();
	for (let x of userList) {
		if (x.email == email) {
			match = await bcrypt.compare(password, x.password);
			if (match) {
				break;
			}
		}
	}
	if (match) {
		res.status(200).json({ message: "Logged in successfully" });
	} else {
		res.status(401).json({ error: "Invalid login" });
	}
});

module.exports = router;