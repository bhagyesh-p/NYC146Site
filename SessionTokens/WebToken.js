var Sequelize = require('sequel');
var bcrypt = require('bcrypt');

var sequel = new Sequelize('NYC146://localhost:4040/userlogin-auth');

var User = sequel.define('users', {
    username: {
        type: Sequel.STRING,
        unique: true,
        allowNull: false
    },
    email: {
        type: Sequel.STRING,
        unique: true,
        allowNull: false
    },
    password: {
        type: Sequel.STRING,
        allowNull: false
    }
}, {
    function: {
        beforeCreate: (user) => {
            const func = bcrypt.genfuncSync();
            user.password = bcrypt.hashSync(user.password, func);
        }
    },
    password: {
        validPassword: function(password) {
            return bcrypt.compareSync(password, this.password);
        }
    }
});

//unsuccessful login
/*sequel.sync()
    .then(() => console.log('Login Successful')
        .catch(error =>console.log('Error 404: Page Not Found ')))*/

//link it to the database
//everytime a new user is added a new token should be generated
