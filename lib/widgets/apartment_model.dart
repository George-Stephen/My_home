import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:async';




Future<List<Apartment>> get_apartments(http.Client client) async {
  http.Response response = await client.get(Uri.parse('https://apartment254.herokuapp.com/api/apartments/'));
  final responseJson = json.decode(response.body).cast<Map<String,dynamic>>();
  print(responseJson);
  List<Apartment> apartments = List<Apartment>.from(responseJson.map<Apartment>((json) => Apartment.fromJson(json)));
  for (var e in apartments) {
    print(e.title);
  }
  return apartments ;
}

Future<List<Apartment>> get_search(http.Client client,String location) async {
  http.Response response = await client.get(Uri.parse('https://apartment254.herokuapp.com/api/apartments/?location=' + location));
  final responseJson = json.decode(response.body).cast<Map<String,dynamic>>();
  print(responseJson);
  List<Apartment> apartments = List<Apartment>.from(responseJson.map<Apartment>((json) => Apartment.fromJson(json)));
  for (var e in apartments) {
    print(e.title);
  }
  return apartments ;
}

class Apartment{
  String imageUrl;
  String title;
  String location;
  String description;
  int bedrooms;
  int bathrooms;
  String bed_imageUrl;
  String bath_imageUrl;
  String lat;
  String long;
  String phone_number;
  int price;

  Apartment({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.description,
    required this.bedrooms,
    required this.bathrooms,
    required this.bed_imageUrl,
    required this.bath_imageUrl,
    required this.lat,
    required this.long,
    required this.phone_number,
    required this.price,
  });

  factory Apartment.fromJson(Map<String,dynamic>json){
    return new Apartment(
        imageUrl: json['main_image'] as String,
        title: json['title'] as String,
        location: json['location'] as String,
        description: json['description'] as String,
        bedrooms: json['bedrooms'] as int,
        bathrooms: json['bathrooms'] as int,
        bed_imageUrl: json['bed_image'] as String,
        bath_imageUrl: json['bath_image'] as String,
        lat: json['lat'] as String,
        long: json['long'] as String,
        phone_number: json['phone_number'] as String,
        price: json['price'] as int,
    );
  }


}