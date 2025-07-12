import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tajnote/screens/home/home.dart';
import 'package:tajnote/screens/login/login.dart';
import 'package:tajnote/screens/note/add_note.dart';
import 'package:tajnote/screens/profile/profile.dart';
import 'package:tajnote/screens/register/register.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.amberAccent),
      ),

      routes: {
        
        "/login": (context) => Login(),
        "/register": (context) => Register(),
        "/addnote": (context) => AddNote(),
        "/profile": (context) => Profile(),
      },
    );
  }
}
