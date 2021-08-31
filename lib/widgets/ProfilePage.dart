import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_home/screens/main/home.dart';

class ProfilePage extends StatefulWidget{
  @override
  _profileState createState() => _profileState();

}

class _profileState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration:  BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://wallpaperaccess.com/full/1977412.jpg"),
                  fit: BoxFit.cover
              )
            ),
            child: Container(
              width: double.infinity,
              height: 150,
              child: Container(
                alignment: Alignment(0.0,2.5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.network("https://pbs.twimg.com/profile_images/1336984864504111104/k-XTyG2J.jpg",
                  fit: BoxFit.cover,
                  height: 120,
                  width: 120,)
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          Text('Aomine Daiki',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 25.0,
              letterSpacing: 2.0,
            ),
          ),
          Text("@Aomine_05",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
              ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Aominedaiki@gmail.com',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text('The only one who can beat me is me, The ace of Generation of miracles,Pro basketball player',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
            child: Text("Edit my profile".toUpperCase(),
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
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
            child: Text("Log out".toUpperCase(),
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
        ],
      ),
    );
  }

}