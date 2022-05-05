import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:my_home/screens/main/home.dart';
import 'package:my_home/widgets/apartment_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ApartmentScreen extends StatefulWidget{
  late final Apartment apartment;

  ApartmentScreen({required this.apartment});

  @override
  _apartmentState createState() => _apartmentState();

}

class _apartmentState extends State<ApartmentScreen>{
  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      GestureDetector(
                        onDoubleTap: (){
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 390,
                          width: double.infinity,
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
                                      image: NetworkImage('https://res.cloudinary.com/dwds7n3rv/'+widget.apartment.imageUrl)
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
                                        widget.apartment.title,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                      Text(
                                        widget.apartment.location,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12.0
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Description',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(widget.apartment.description,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                            color: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white12),
                                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                          color: Colors.white12.withOpacity(0.1)
                                      ),
                                      child: Icon(
                                        Icons.king_bed_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        children: [
                                          Text('Bedrooms',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.0
                                            ),
                                          ),
                                          Text( widget.apartment.bedrooms.toString() +' Rooms',
                                            style:TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white12),
                                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                          color: Colors.white12.withOpacity(0.1)
                                      ),
                                      child: Icon(
                                        Icons.bathtub,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        children: [
                                          Text('Bathrooms',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 11.0
                                            ),
                                          ),
                                          Text(widget.apartment.bathrooms.toString() +' Rooms',
                                            style:TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 300,
                            width: double.infinity,
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
                                        image: NetworkImage('https://res.cloudinary.com/dwds7n3rv/'+widget.apartment.bed_imageUrl)
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
                                          'Bedrooms design : ',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 300,
                            width: double.infinity,
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
                                        image: NetworkImage('https://res.cloudinary.com/dwds7n3rv/'+ widget.apartment.bath_imageUrl)
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
                                          'Bathroom designs : ',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 360,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                          ),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            heightFactor: 0.3,
                            widthFactor: 2.5,
                            child: GoogleMap(
                              initialCameraPosition: CameraPosition(target: LatLng(double.parse(widget.apartment.lat),double.parse(widget.apartment.long)),zoom: 15,bearing: 15.0, // 1
                                tilt: 74.0, // 2
                              ),
                              myLocationEnabled: true,
                              myLocationButtonEnabled: true,
                              mapType: MapType.normal,
                              zoomGesturesEnabled: true,
                              zoomControlsEnabled: false,
                              onMapCreated: (GoogleMapController controller) async {
                                _controller = controller;
                                String value = await DefaultAssetBundle.of(context)
                                    .loadString('assets/map_style.json');
                                _controller.setMapStyle(value);
                              },
                              markers: _createMarker(LatLng(double.parse(widget.apartment.lat),double.parse(widget.apartment.long)))
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white12),
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            color: Color(0xff2E2E3B)
                        ),
                        child: Row(
                          children: [
                            Expanded(
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text("Price",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12,
                                              color: Colors.white
                                          ),
                                        ),
                                        Text(widget.apartment.price.toString() + '/Month',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            color: Colors.white
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                            ),
                            Expanded(
                                child: SizedBox(
                                  width: 250,
                                  height: 40,
                                  child: TextButton(
                                    onPressed: () => launch("tel: " + widget.apartment.phone_number),
                                    child: Text("Inquire now".toUpperCase(),
                                      style: TextStyle(
                                          fontSize: 14
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all(Colors.white),
                                      backgroundColor: MaterialStateProperty.all(Color(0xff47BEE3)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(18.0),
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
Set<Marker> _createMarker(LatLng latLng) {
  return {
    Marker(
        markerId: MarkerId("marker_1"),
        position: latLng),
  };
}
