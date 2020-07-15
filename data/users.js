const mongoCollections = require('../config/mongoCollections');
const users = mongoCollections.users;
const { ObjectId } = require('mongodb');
const bcrypt = require('bcrypt');
const saltRounds = 8;

module.exports = {
    async getUser(id) {
        if (!id) throw 'You must provide an id to search for.';
        const userCollection = await users();
        if (typeof id == 'string') {
            id = ObjectId.createFromHexString(id);
        }
        user = await userCollection.findOne({_id: id});
        if (user === null) throw 'No user with that id.';
        
        return user;
    },
    async addUser(name, email, password) {
        if (!name) throw 'You must provide a name.';
        if (!email) throw 'You must provide an email.';
        if (!password) throw 'You must provide a password.';

        const userCollection = await users();
        const hash = await bcrypt.hash(password, saltRounds);

        let newUser = {
            name: name,
            email: email,
            password: hash
        };
        const insertInfo = await userCollection.insertOne(newUser);
        if (insertInfo.insertedCount === 0) throw 'Could not add user.';

        const newId = insertInfo.insertedId;
        const added = await this.getUser(newId);
        return added;
    },
    async getAllUsers() {
        const userCollection = await users();
        const all = await userCollection.find({}).toArray();
        return all;
    },
    async removeUser(id) {
        if (!id) throw 'You must provide an id to search for.';
        const userCollection = await users();
        if (typeof id == 'string') {
            id = ObjectId.createFromHexString(id);
        }
		const deletionInfo = await userCollection.deleteOne({ _id: id });
		if (deletionInfo.deletedCount === 0) throw `Could not delete user with id of ${id}`;
		return true;
	},
    async updateUser(userId, name, email, password) {
        if (!userId) throw 'You must provide an id to search for.';
        if (!name) throw 'You must provide a name.';
        if (!email) throw 'You must provide an email.';
        if (!password) throw 'You must provide a password.';

        if (typeof userId == 'string') {
            userId = ObjectId.createFromHexString(userId);
        }
        const userCollection = await users();
        const user = await this.getUser(userId);
        const hash = await bcrypt.hash(password, saltRounds);
        const updatedUser = {
            name: name,
            email: email,
            password: hash
        };

        const updatedInfo = await userCollection.updateOne({_id: userId}, {$set: updatedUser});
        if (updatedInfo.modifiedCount === 0) {
            throw 'Could not update user successfully.';
        }

        return await this.getUser(userId);
    }
}
