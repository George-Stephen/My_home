import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_home/screens/main/bottom_bar.dart';
import 'package:my_home/widgets/ProfilePage.dart';
import 'package:my_home/widgets/SearchCarousel.dart';
import 'package:my_home/widgets/apartmentCarousel.dart';
import 'package:my_home/widgets/favoriteCarousel.dart';

class HomePage extends StatefulWidget{
  @override
  _homeState createState() => _homeState();
}

enum BottomIcons { Home,Search ,Favourites, Profile }

class _homeState extends State<HomePage> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.Home
              ? Center(
            child: ApartmentCarousel()
          )
              : Container(),
          bottomIcons == BottomIcons.Search
              ? Center(
              child: SearchCarousel()
          )
              : Container(),
          bottomIcons == BottomIcons.Favourites
              ? Center(
            child: FavoriteCarousel()
          )
              : Container(),
          bottomIcons == BottomIcons.Profile
              ? Center(
            child: ProfilePage()
          )
              : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Home ? true : false,
                      icons: EvaIcons.homeOutline,
                      text: "Home"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Search;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Search ? true : false,
                      icons: EvaIcons.searchOutline,
                      text: "Search"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Favourites;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Favourites ? true : false,
                      icons: EvaIcons.starOutline,
                      text: "Favorites"),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Profile;
                        });
                      },
                      bottomIcons:
                      bottomIcons == BottomIcons.Profile ? true : false,
                      icons: EvaIcons.personOutline,
                      text: "Profile"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}