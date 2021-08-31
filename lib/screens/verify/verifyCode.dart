import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_home/screens/main/home.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyCode extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 180,
            ),
            Text("Verify number",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Please enter the 4-digit \n code sent to your phone number",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15.0,
                color: Colors.white
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 55,
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              outlineBorderRadius: 15,
              onCompleted: (pin) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              onChanged: (pin){
                print("Changed: " + pin);
              },
            ),
          ],
        ),
      ),
    );
  }

}