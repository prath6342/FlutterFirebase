import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'signuppage.dart';
import 'loginpage.dart';
import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => new MyApp(),
        '/signup': (BuildContext context) => new SignUpPage(),
        '/homepage': (BuildContext context) => new HomePage()
      },
    );
  }
}
