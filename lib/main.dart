import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studentsaving/FirebaseAuthService/firebaseauthservice.dart';

import 'Pages/splash_screen.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp( const MyApp());

}
  

  class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);


    @override
    Widget build(BuildContext context) {
      return MultiProvider(
        providers: [
          Provider<AuthenticationService> (create: (_)=>AuthenticationService(FirebaseAuth.instance),),
          StreamProvider(create: (context)=>context.read<AuthenticationService>().authStateChanges, initialData: null,)
        ],
        child: MaterialApp(

          debugShowCheckedModeBanner: false,
          initialRoute: '/SplashScreen',
          routes: {
            '/SplashScreen': (context) => const SplashScreen(),

          },
        ),
      );
    }
  }

