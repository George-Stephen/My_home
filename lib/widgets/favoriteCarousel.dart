import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_home/screens/apartmentDetail.dart';
import 'package:my_home/widgets/apartment_model.dart';
import 'package:toast/toast.dart';

class FavoriteCarousel extends StatefulWidget{
  @override
  _favoriteState createState() => _favoriteState();

}

class _favoriteState extends State<FavoriteCarousel>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Column(
        children: [
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,top: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("My Favorites",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),
          Center(
            child: SizedBox(
              height: 430.0,
              child:  PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: apartments.length,
                controller: PageController(viewportFraction: 1.0),
                itemBuilder: (BuildContext context,int index){
                  Apartment apartment = apartments[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(
                          builder: (_) => ApartmentScreen(
                              apartment: apartment
                          ),
                        )
                    ),
                    child: Card(
                      semanticContainer: false,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      margin: EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(apartment.imageUrl)
                            )
                        ),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent.withOpacity(0.5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    apartment.title,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  Text(
                                    apartment.location,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.0
                                    ),
                                  )
                                ],
                              ),
                            )
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

}