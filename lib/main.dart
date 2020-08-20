// import 'dart:html' as html;

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;

// void main() {
//   String token;
//   if (html.window.location.href.contains("access_token")) {
//     String url = html.window.location.href
//         .replaceFirst("#/", "?"); // workaround for readable redirect url
//     Uri uri = Uri.parse(url);
//     if (uri.queryParameters.keys.contains("access_token"))
//       token = uri.queryParameters["access_token"];
//   }

//   runApp(
//     MaterialApp(
//         title: 'Facebook Sign In',
//         home: SignIn(
//           token: token,
//         )),
//   );
// }

// class SignIn extends StatefulWidget {
//   final String token;

//   const SignIn({Key key, this.token}) : super(key: key);

//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   String _message;
//   final String clientId = "286180245994753";
//   final String redirectUri = "http://localhost:5000";

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     if (widget.token != null) _signInWithFacebook(widget.token);
//   }

//   void _signInWithFacebook(String token) async {
//     setState(() {
//       _message = "Loading...";
//     });
//     final AuthCredential credential = FacebookAuthProvider.getCredential(
//       accessToken: token,
//     );
//     final FirebaseUser user =
//         (await _auth.signInWithCredential(credential)).user;
//     assert(await user.getIdToken() != null);
//     final tokens = await user.getIdToken();
//     print(tokens.token);
//     final FirebaseUser currentUser = await _auth.currentUser();
//     assert(user.uid == currentUser.uid);
//     setState(() {
//       if (user != null) {
//         _message = 'Successfully signed in with Facebook. ' +
//             user?.displayName.toString();
//       } else {
//         _message = 'Failed to sign in with Facebook. ';
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Text(_message ?? "Please try to sign in"),
//             RaisedButton(
//               onPressed: () {
//                 html.window.open(
//                     "https://www.facebook.com/dialog/oauth?response_type=token&scope=email,public_profile,&client_id=${clientId}&redirect_uri=${redirectUri}",
//                     "_self");
//               },
//               child: Text('Facebook login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'DetailedScreen.dart'; //important fix

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final FacebookLogin facebookSignIn = new FacebookLogin();

  //my code
  final FirebaseAuth _fAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  //end my code

  Future<FirebaseUser> _signInGoogle(BuildContext context) async {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text('Sign in button clicked'),
    ));
    final googleUser = await _googleSignIn.signIn();
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final authResult = await _fAuth.signInWithCredential(credential);
    final token = await authResult.user.getIdToken();
    print(token.token);
    return authResult.user;
  }

  Future<FirebaseUser> _signInFacebook(BuildContext context) async {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text('Sign in button clicked'),
    ));

    // final FacebookLoginResult result =
    //     await facebookSignIn.logInWithReadPermissions(['email']);

    // FirebaseUser user =
    //     await _fAuth.signInWithFacebook(accessToken: result.accessToken.token);
    //Token: ${accessToken.token}

//     final facebookLoginResult = await facebookSignIn
//         .logInWithReadPermissions(['email', 'public_profile']);
//     FacebookAccessToken myToken = facebookLoginResult.accessToken;

//     ///assuming sucess in FacebookLoginStatus.loggedIn
//     /// we use FacebookAuthProvider class to get a credential from accessToken
//     /// this will return an AuthCredential object that we will use to auth in firebase
//     AuthCredential credential =
//         FacebookAuthProvider.getCredential(accessToken: myToken.token);

// // this line do auth in firebase with your facebook credential.
//     FirebaseUser firebaseUser =
//         (await FirebaseAuth.instance.signInWithCredential(credential)).user;

    final FacebookLoginResult facebookLoginResult =
        await facebookSignIn.logIn(['email', 'public_profile']);
    FacebookAccessToken facebookAccessToken = facebookLoginResult.accessToken;
    AuthCredential authCredential = FacebookAuthProvider.getCredential(
        accessToken: facebookAccessToken.token);
    FirebaseUser user;
    user = (await _fAuth.signInWithCredential(authCredential)).user;
    final token = await user.getIdToken();
    print(token.token);

//     final facebookLogin = new FacebookLogin();

//     final facebookLoginResult = await facebookLogin
//         .logInWithReadPermissions(['email', 'public_profile']);

//     switch (facebookLoginResult.status) {
//       case FacebookLoginStatus.error:
//         print("Error");
//         break;

//       case FacebookLoginStatus.cancelledByUser:
//         print("CancelledByUser");
//         break;

//       case FacebookLoginStatus.loggedIn:
//         print("LoggedIn");
//         /// calling the auth mehtod and getting the logged user
//         var firebaseUser = await firebaseAuthWithFacebook(
//             token: facebookLoginResult.accessToken);
//      }
// }

    ProviderDetails userInfo = new ProviderDetails(
        user.providerId, user.uid, user.displayName, user.photoUrl, user.email);

    List<ProviderDetails> providerData = new List<ProviderDetails>();
    providerData.add(userInfo);

    UserInfoDetails userInfoDetails = new UserInfoDetails(
        user.providerId,
        user.uid,
        user.displayName,
        user.photoUrl,
        user.email,
        user.isAnonymous,
        user.isEmailVerified,
        providerData);

    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new DetailedScreen(detailsUser: userInfoDetails),
      ),
    );

    return user;
  }

  Future<Null> _signOut(BuildContext context) async {
    await facebookSignIn.logOut();
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text('Sign out button clicked'),
    ));
    print('Signed out');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Fb Sign In with Firebase'),
        ),
        body: new Builder(
          builder: (BuildContext context) {
            return new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    //padding: new EdgeInsets.all(16.0),
                    minWidth: 150.0,
                    onPressed: () => _signInGoogle(context)
                        .then((FirebaseUser user) => print(user))
                        .catchError((e) => print(e)),
                    child: new Text('Sign in with Google'),
                    color: Colors.lightGreenAccent,
                  ),
                  new MaterialButton(
                    //padding: new EdgeInsets.all(16.0),
                    minWidth: 150.0,
                    onPressed: () => _signInFacebook(context)
                        .then((FirebaseUser user) => print(user))
                        .catchError((e) => print(e)),
                    child: new Text('Sign in with Facebook'),
                    color: Colors.lightBlueAccent,
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(5.0),
                  ),
                  new MaterialButton(
                    minWidth: 150.0,
                    onPressed: () => _signOut(context),
                    child: new Text('Sign Out'),
                    color: Colors.lightBlueAccent,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class UserInfoDetails {
  UserInfoDetails(this.providerId, this.uid, this.displayName, this.photoUrl,
      this.email, this.isAnonymous, this.isEmailVerified, this.providerData);

  /// The provider identifier.
  final String providerId;

  /// The provider’s user ID for the user.
  final String uid;

  /// The name of the user.
  final String displayName;

  /// The URL of the user’s profile photo.
  final String photoUrl;

  /// The user’s email address.
  final String email;

  // Check anonymous
  final bool isAnonymous;

  //Check if email is verified
  final bool isEmailVerified;

  //Provider Data
  final List<ProviderDetails> providerData;
}

class ProviderDetails {
  final String providerId;

  final String uid;

  final String displayName;

  final String photoUrl;

  final String email;

  ProviderDetails(
      this.providerId, this.uid, this.displayName, this.photoUrl, this.email);
}
