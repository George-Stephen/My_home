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
    return Column(
      children:<Widget> [
        SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10.0),
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              fillColor: Colors.transparent.withOpacity(0.2),
              filled: true,
              hintText: "Search",
              hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 18
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(color: Colors.white, width: 2.0)
              ),
              prefixIcon: Container(
                padding: EdgeInsets.all(15),
                child: Icon(Icons.search_sharp,color: Colors.white),
                width: 18,
              ),
            ),
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ),
          SizedBox(
            height: 30.0,
          ),
          new FutureBuilder<List<Apartment>>(
          future: get_apartments(http.Client()),
          builder: (context,snapshot){
          if(snapshot.hasError){
          return  Center(
          child: Text("We are currently facing technical issues,try again after a few minutes"),
          );
          } else if(snapshot.hasData){
          List<Apartment> apartments = snapshot.data!;
          return  Container(
          width: double.infinity,
          margin: EdgeInsets.all(10.0),
          child: Column(
          children: [
            Center(
              child: SizedBox(
              height: 550.0,
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
              elevation: 3,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              margin: EdgeInsets.all(2.0),
              child: Stack(
              children: <Widget>[
              Container(
              alignment: Alignment.center,
              child: Image.network('https://res.cloudinary.com/dwds7n3rv/'+ apartment.imageUrl,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,),
              ),
              Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
              height: 100,
              width: double.infinity,
              child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
                ),
                child:Padding(
                padding: const EdgeInsets.all(8.0),
                child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                apartment.title,
                textAlign: TextAlign.justify,
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.0,
                  fontSize: 20.0,
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
              )
              ),
              ),
              ),
              )
              ),
              ],
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
        ),

      ],
    );
  }
}

