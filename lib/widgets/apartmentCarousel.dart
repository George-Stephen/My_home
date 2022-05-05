import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_home/widgets/apartment_model.dart';
import 'package:flutter/rendering.dart';
import 'package:my_home/screens/apartmentDetail.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart' as http;



class ApartmentCarousel extends StatefulWidget{
  @override
  _apartmentState createState() => _apartmentState();

}
class _apartmentState extends State<ApartmentCarousel>{
  @override
  Widget build(BuildContext context) {
    return new FutureBuilder<List<Apartment>>(
        future: get_apartments(http.Client()),
        builder: (context,snapshot){
          if(snapshot.hasError){
            return  Center(
              child: Text("We are currently facing technical issues,try again after a few minutes"),
            );
          } else if(snapshot.hasData){
            List<Apartment> apartments = snapshot.data!;
            return  Container(
              width: 300.0,
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: SizedBox(
                      height: 395.0,
                      child:  PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: apartments.length,
                        controller: PageController(viewportFraction: 1.0),
                        itemBuilder: (BuildContext context,int index){
                          Apartment apartment = apartments[index];
                          return GestureDetector(
                            onDoubleTap: () =>
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                      duration : Duration(seconds: 1),
                                      content: Text("Apartment is added to your favorites successfully")
                                  ),
                                ),
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
                                        image: NetworkImage('https://res.cloudinary.com/dwds7n3rv/'+ apartment.imageUrl)
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
          else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }
}

