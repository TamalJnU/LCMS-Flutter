import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  //bool _isNotValided = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 35.0,
              ),
              Image(
                image: AssetImage("images/lcms.png"),
                height: 250.0,
                width: 390.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "LOGIN",
                style: TextStyle(fontSize: 25,),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: emailTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 30.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      controller: passwordTextEditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                        ),
                      ),
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                      child: Container(
                        height: 50.0,
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: "bolt-semibold",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      onPressed: (){
                        if (!emailTextEditingController.text.contains("@") && !emailTextEditingController.text.contains(".com")) {
                          displayToastMessage("Invalid Email", context);
                        } else if (passwordTextEditingController.text.length < 6) {
                          displayToastMessage("Invalid Password", context);
                        } else {
                          displayToastMessage("Hello!! ${emailTextEditingController.text} ${passwordTextEditingController.text}", context);
                        }
                        Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
                      },
                      //child: child
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Don't Registered?"
                    ),
                    InkWell(
                      child: Text(
                        "Sign Up", 
                        style: TextStyle(color: Colors.green, fontSize: 20 ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

displayToastMessage(String message, BuildContext context) {
  Fluttertoast.showToast(msg: message);
}
