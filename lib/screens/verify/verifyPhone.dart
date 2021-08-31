import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_home/screens/verify/verifyCode.dart';
import 'package:my_home/screens/verify/verifyPhone.dart';

class VerifyPhone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text("Verify phone number",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Please enter your phone number",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              hintText: '07********',
                              prefixIcon: Icon(Icons.phone)
                          ),
                          style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: TextButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyCode())),
                            child: Text("Send".toUpperCase(),
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
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  
}