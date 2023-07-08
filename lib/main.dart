import 'package:flutter/material.dart';
import 'package:lcms_flutter/pages/home.dart';
import 'package:lcms_flutter/pages/login.dart';
import 'package:lcms_flutter/pages/signup.dart';
import 'package:lcms_flutter/pages/userlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      //home: const MyApp2()

      initialRoute: "/",
      routes: {
        "/": (context) => Login(),
        "/login": (context) => Login(),
        "/userList": (context) => UserList(),
        "/signup": (context) => Signup(),
        "/home": (context) => Home(),
      },

    );
  }
}

Map<String, String> get headers => <String, String>{
    'Content-Type': 'application/json',
    'Accept': 'application/json',
};
