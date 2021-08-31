
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_home/screens/main/home.dart';

class ResetPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 0,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15.0,top: 10.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            )
                          ),
                      )
                  ),
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0,top: 10.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Reset password'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white
                            ),
                          ),
                        ),
                      )
                  )
                ],
              ),
              Container(
                width: 300,
                child: Column(
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.contact_mail),
                          hintText: "you@gmail.com",
                          labelText: 'Email address',
                          filled: true,
                          fillColor: Color(0xff2E2E3B),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                          )
                      ),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('Please enter your email address and we will send you a link to reset your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 15.0
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 250,
                      height: 40,
                      child: TextButton(
                        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                        child: Text("Reset password".toUpperCase(),
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Color(0xff1F1F2C)),
                          backgroundColor: MaterialStateProperty.all(Colors.white),
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
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
  
}