import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_home/screens/forgotPassword.dart';
import 'package:my_home/screens/register.dart';
import 'package:my_home/screens/verify/verifyPhone.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Text("Let's login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: 300.0,
                    child: Column(
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Email address',
                              hintText: 'you@gmail.com',
                              prefixIcon: Icon(Icons.contact_mail)
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0
                          ),
                        ),
                        TextField(
                          maxLength: 9,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: '*******',
                            prefixIcon: Icon(Icons.https),
                          ),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FittedBox(
                          child: TextButton(
                            child: Text("Forgot password?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPage())),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 250,
                          height: 40,
                          child: TextButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyPhone())),
                            child: Text("Sign in".toUpperCase(),
                              style: TextStyle(
                                  fontSize: 14
                              ),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.white
                                      )
                                  )
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FittedBox(
                          child: TextButton(
                            child: Text("Get registered".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage())),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}