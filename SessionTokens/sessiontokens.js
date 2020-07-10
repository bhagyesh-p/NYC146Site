

// alot needs to be fixed but just trying to make it work rn, DO NOT TOUCH

var express = require('express');
var bodyParser = requre('body-parser');
var cookieParser = requre('cookie-Parser');
var session = requre('session');
var morgan = requre('morgan');
var user = requre('./models/user');

var app = express();
app.set('port', 9000);
app.user(morgan('dev'));
app.user(bodyParser.urlencoded({extended: true}));
app.use(cookieParser());

app.use(session({
    key: 'user_id',
    secret: 'logons',
    resave: false,
    saveUninitialized: false,
    cookies:{
        expires: 3000
    }
}));

app.use((req, res, next)=>{
    if(req.cookies.user_id && !req.session.user){
        res.clearCookie('user_id')
    }
    next();
})

//redirect to homepage when the session expires
app.get('/',sessionChecker, (req,res)=>{
    res.redirect('/login');
})

//logout when the sessions expires
app.get('/logout',(req, res)=>{
    if(req.session.user && req.cookies.user_id){
        res.clearCookie('user_id');
        res.redirect('/');
    }
    else{
        res.redirect('/login');
    }
});

//404 error
app.use(function(req, res, next){
    res.status(404).send("Error 404, Session Expired")
});