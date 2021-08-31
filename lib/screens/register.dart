import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_home/screens/login.dart';
import 'package:my_home/screens/verify/verifyPhone.dart';

class RegisterPage extends StatelessWidget{
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
                  Text("Get registered",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 300.0,
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: 'John doe',
                              labelText: 'Full name',
                              prefixIcon: Icon(Icons.person)
                          ),
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Username',
                              hintText: 'janedoe05',
                              prefixIcon: Icon(Icons.person)
                          ),
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 14.0

                          ),
                        ),
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
                          maxLength: 9,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 250,
                          height: 40,
                          child: TextButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyPhone())),
                            child: Text("Sign up".toUpperCase(),
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
                            child: Text("Sign in".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            ),
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage())),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ),

          ],
        ),
      ),
    );
  }

}