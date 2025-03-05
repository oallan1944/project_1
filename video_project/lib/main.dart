import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_project/features/auth/pages/login_page.dart';
import 'package:video_project/firebase_options.dart';

void main() async {

  // Initialize firebase when the app fires up
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // wrap my app with a state management(providerscope)
  runApp( ProviderScope(child: MyApp()) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '4-1-1',
    // check whether a user is signed in
    // wrap the login widget/page with a stream builder
      home: StreamBuilder(
        // use an instance of the firebaseAuth
        stream: FirebaseAuth.instance.authStateChanges(), // checks signIn status of the firebaseAuth
         builder: (context, snapshot) {
          if(!snapshot.hasData){
            return LoginPage();
          }
          return Container();
         }
         )
    );
  }
}

