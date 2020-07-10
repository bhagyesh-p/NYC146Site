const express = require("express");
const router = express.Router();
const path = require('path');
const data = require("../data");
const userData = data.users;

router.get("/", async (req, res) => {
  try {
    res.sendFile(path.resolve('static/signUp.html'));
  } catch (e) {
    res.status(500).send();
  }
});

router.post("/", async (req, res) => {
    const user = req.body;
    if (!user.name) {
		res.status(400).json({ error: 'You must provide a name' });
		return;
    }
    if (!user.email) {
		res.status(400).json({ error: 'You must provide an email' });
		return;
    }
    if (!user.psw) {
		res.status(400).json({ error: 'You must provide a password' });
		return;
	}
    try {
        const { name, email, psw } = user;
        const newUser = await userData.addUser(name, email, psw);
        res.status(200).json(newUser);
    } catch (e) {
        res.status(500).json({ error: e });
    }
  });

module.exports = router;