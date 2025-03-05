
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_project/features/auth/repository/auth_service.dart';


// change stateless widget into consumer widget 
// to utilize providers
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref ) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 10, bottom: 25),
               child: Image.asset('assets/images/signin.jpg',
               height: 150,
               ),
             ),
             
              const Text('Welcome To 4-1-1',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
              ), 
              const Spacer(), 

              Padding(
                padding: const EdgeInsets.only(bottom: 55),
                child: GestureDetector(
                  onTap: () async {
                    // use ref.read to read data/ state once
                  await  ref.read(authServiceProvider).signInwithGoogle();
                  },
                  child: Image.asset('assets/images/signinwithgoogle.png',
                  height: 60,
                  ),
                ),
              ),
            ],
          ),
        ) 
        ) ,
    );
  }
}