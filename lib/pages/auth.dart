// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:rxdart/rxdart.dart';

// class AuthService {

//   // Dependencies
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final Firestore _db = Firestore.instance;

//   // Shared State for Widgets
//   Observable<FirebaseUser> user; // firebase user
//   Observable<Map<String, dynamic>> profile; // custom user data in Firestore
//   PublishSubject loading = PublishSubject();

//   // constructor
//   AuthService() {

//   }

//   // Example code of how to sign in with google.

//   void _signInWithGoogle() async {
//     final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
//     final GoogleSignInAuthentication googleAuth =
//         await googleUser.authentication;
//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );
//     final FirebaseUser user =
//         (await _auth.signInWithCredential(credential)).user;
//     assert(user.email != null);
//     assert(user.displayName != null);
//     assert(!user.isAnonymous);
//     assert(await user.getIdToken() != null);

//     final FirebaseUser currentUser = await _auth.currentUser();
//     assert(user.uid == currentUser.uid);
//     // setState(() {
//     //   if (user != null) {
//     //     _success = true;
//     //     _userID = user.uid;
//     //   } else {
//     //     _success = false;
//     //   }
//     // });
//   }

//   void updateUserData(FirebaseUser user) async {


//   }

//   void signOut() {

//   }
// }

// final AuthService authService = AuthService();