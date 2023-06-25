import 'package:flutter/material.dart';

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

      // initialRoute: "/",
      // routes: {
      //   "/": (context) => Login(),
      //   "/login": (context) => Login(),
      //   "/userList": (context) => UserList(),
      //   "/signup": (context) => Signup(),
      //   "/home": (context) => Home(),

      //   "/page1": (context) => Page1(),
      //   "/page2": (context) => Page2(),
      //   "/page3": (context) => Page3(),
      // },

    );
  }
}
