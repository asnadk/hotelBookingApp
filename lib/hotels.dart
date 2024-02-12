import 'package:flutter/material.dart';
import 'package:hotel_details/main.dart';


class HotelDetailsPage extends StatelessWidget {
  final Hotel hotel;

  HotelDetailsPage({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(hotel.name ,style: const TextStyle(fontSize:20.0,fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              hotel.image,
              width:double.infinity,
              height:300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              hotel.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
             const SizedBox(height: 10),
             const Text("Description",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
             Text(hotel.description),
              const SizedBox(height: 10),
             const Text("Rating",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),              // Text("rating:",hotel.rating)
            Text(hotel.rating.toString(),style: const TextStyle(fontSize:15.0,fontWeight: FontWeight.bold)),
             const SizedBox(height: 10),
           const Text("Location",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
           Text(hotel.location,style: const TextStyle(fontSize:15.0,fontWeight: FontWeight.bold),),
             const SizedBox(height: 10),
            ElevatedButton(onPressed: () {
             
           },style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 12, 239, 194)),),
           child: const Text("Book"))
          ],
        ),
      ),
    );
  }
}

