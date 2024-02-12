import 'package:flutter/material.dart';
import 'package:hotel_details/hotels.dart';
import 'package:hotel_details/main.dart';

class HotelListPage extends StatelessWidget {
  final List<Hotel> hotels = [
    Hotel(name: 'HOTAL TAJ', image: 'assets/download (2).jpg',
               description: 'Attractively situated in the centre of Mumbai, Hotel Lords,  The rooms are  fridge, a kettle, a shower, free toiletries and a desk. At the hoterequested. Staff speak English and Hindi at the', rating: 4.3, location: 'Mumbai'),
    Hotel(name: 'Sixth Avenue', image: 'assets/download (1).jpg',
               description: 'South of Mumbais Central Business District, Chateau Windsor Hotel is located  2 km while Colaba causeway is 3.4 km away from the property. Mumbai International airpor', rating: 4.2, location: 'chennai'),
    Hotel(name: 'Sky Line', image: 'assets/download (3).jpg', 
              description: 'Hotel Sahil is a convenient 5-minute drive from the prime railway station – Mumba The hotel is within easy reach to various corporate offices, bus terminals and shopping malls.', rating: 4.4, location: 'goa'),
    Hotel(name: 'Hotal Rajpalace', image: 'assets/download (4).jpg', 
               description: 'Hotel Sahil is a convenient 5-minute drive from the prime railway station – Mumbai Central Station. It offers rooms with complimentary WiFi access. The hotel is within easy reach to various corporate offices, bus terminals and shopping malls.', rating: 4.5, location: 'delhi'),
    Hotel(name: 'Hotel BramaYugam', image: 'assets/download (5).jpg',
               description: 'Hotel Sahil is a convenient 5-minute drive from the prime railway station – Mumbai Central StatioThe hotel is within easy reach to various corporate offices, bus terminals and shopping malls.', rating: 4.5, location: 'kerala'),
    Hotel(name: 'Hotel Golden Palace', image: 'assets/download (3).jpg',
              description: 'Hotel Sahil is a convenient 5-minute drive from the prime railway station – Mumbai Cent is within easy reach to various corporate offices, bus terminals and shopping malls.', rating: 5.2, location: 'kochi'),
    Hotel(name: 'Usthad Hotal', image: 'assets/download (1).jpg',
              description: 'Hotel Sahil is a  station – Mumbai Central Station. It offers rooms within easy reach to various corporate offices, bus terminals and shopping malls.', rating: 4, location: 'calicut'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hotel List'),
        ),
        body: ListView.builder(
          itemCount: hotels.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(hotels[index].name),
                leading: Image.asset(
                  hotels[index].image,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HotelDetailsPage(hotel: hotels[index]),
                    ),
                  );
                },
              ),
            );  }, 
        ),
      ),
    );
  }
}