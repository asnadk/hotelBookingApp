import 'package:flutter/material.dart';
import 'package:hotel_details/homepage.dart';

void main() {
  runApp(MyApp());
}

class Hotel {
  final String name;
  final String image;
  final double rating;
  final String description;
  final String location;

  Hotel({required this.name, required this.image,required this.description,required this.rating,required this.location});
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Hotel App',
      home: HotelListPage(),
   );
  }
}
