const mongoCollections = require('../config/mongoCollections');
const users = mongoCollections.users;
const { ObjectId } = require('mongodb');
const bcrypt = require('bcrypt');
const saltRounds = 5;

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
    // async removeBand(id) {
    //     if (!id) throw 'You must provide an id to search for.';
    //     const bandCollection = await bands();
    //     // const albumCollection = await albums();
    //     if (typeof id == 'string') {
    //         id = ObjectId.createFromHexString(id);
    //     }
    //     // const band = await this.getBand(id);
    //     // const albums = band.albums;
    //     // console.log(albums);
    //     // for (let album of albums) {
    //     //     console.log(album);
    //     //     const albumDelete = await albumCollection.deleteOne({ _id: album._id });
    //     //     if (albumDelete.deletedCount === 0) throw `Could not delete album with id of ${album}`;
    //     // }
	// 	const deletionInfo = await bandCollection.deleteOne({ _id: id });
	// 	if (deletionInfo.deletedCount === 0) throw `Could not delete band with id of ${id}`;
	// 	return true;
	// },
    // async updateBand(bandId, bandName, bandMembers, yearFormed, genres, recordLabel) {
    //     if (!bandId) throw 'You must provide an id to search for.';
    //     if (!bandName) throw 'You must provide a band name.';
    //     if (!Array.isArray(bandMembers)) throw 'You must provide an array of band members.';
    //     if (!yearFormed) throw 'You must provide the year the band formed.';
    //     if (!Array.isArray(genres)) throw 'Genres needs to be an array.';
    //     if (!recordLabel) throw 'You must provide the record label.';
    //     if (bandMembers.length <= 0) throw 'You must provide band members.';
    //     if (genres.length <= 0) throw 'You must provide genres.';

    //     if (typeof bandId == 'string') {
    //         bandId = ObjectId.createFromHexString(bandId);
    //     }
    //     const bandCollection = await bands();
    //     const band = await this.getBand(bandId);
    //     const updatedBand = {
    //         bandName: bandName,
    //         bandMembers: bandMembers,
    //         yearFormed: yearFormed,
    //         genres: genres,
    //         albums: band.albums,
    //         recordLabel: recordLabel
    //     };

    //     const updatedInfo = await bandCollection.updateOne({_id: bandId}, {$set: updatedBand});
    //     if (updatedInfo.modifiedCount === 0) {
    //         throw 'Could not update band successfully.';
    //     }

    //     return await this.getBand(bandId);
    // }
}