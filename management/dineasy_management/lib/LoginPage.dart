import 'package:flutter/material.dart';
import 'package:dineasy_management/StatusPage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void pressedLogin() {
    Navigator.of(context).pushNamed(StatusPage.tag);
  }

  void pressedRegister() {

  }

  void pressedForgot() {

  }

  @override
  Widget build(BuildContext context) {

    final email = TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Please type in your email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final password = TextField(
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Please type in your password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0)
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          color: Colors.blue,
          height: 50.0,
          onPressed: pressedLogin,
          child: Text('Log In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
              )
          ),
        ),
      ),
    );

    final registerButton = Padding(
      padding: EdgeInsets.fromLTRB(60.0, 0.0, 60.0, 10.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          color: Colors.blue,
          height: 50.0,
          onPressed: pressedRegister,
          child: Text('Register',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
              )
          ),
        ),
      ),
    );

    final forgotText = FlatButton(
      child: Text(
        'Forgot Password?',
        style: TextStyle(
            color: Colors.black26,
            fontSize: 15.0),
      ),
      onPressed: pressedForgot,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
          children: <Widget>[
            email,
            SizedBox(height: 10.0),
            password,
            SizedBox(height: 10.0),
            loginButton,
            SizedBox(height: 10.0),
            registerButton,
            SizedBox(height: 5.0),
            forgotText
          ],
        )
      )
    );
  }
}
