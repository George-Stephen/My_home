import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_home/screens/login.dart';
import 'package:my_home/screens/register.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: <Widget>[
              Image.asset("assets/images/RealEstate.png",),
              Text("Welcome",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Come on,Let's get you the best \n apartment in the country",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: Colors.white
                  ),
              ),
              SizedBox(
                height: 150,
              ),
              SizedBox(
                width: 250,
                height: 40,
                child: TextButton(
                  onPressed: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),),
                  child: Text("Login".toUpperCase(),
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
      ),
    );
  }

}