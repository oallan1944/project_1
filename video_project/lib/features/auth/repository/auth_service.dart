// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


//create a provider for user login
final authServiceProvider = Provider(
  (ref) => AuthService(
    auth: FirebaseAuth.instance,
     googleSignIn: GoogleSignIn()
     )
      );

class AuthService {
 FirebaseAuth auth;
 GoogleSignIn googleSignIn;
  AuthService({
    required this.auth,
    required this.googleSignIn,
  });

  signInwithGoogle() async {
    // pass an instance of google sign in
    // call the signin function 
    //pops up a creen that lets a user choose a google 
    // account from all google accounts they may have

    //save the result into user
    final user = await googleSignIn.signIn(); 
    final googleAuth = await user!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken ,
      idToken: googleAuth.idToken,
    );
    await auth.signInWithCredential(credential);
  }


}
