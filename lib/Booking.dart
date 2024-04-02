import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://m.media-amazon.com/images/I/81ZDIffktPL._AC_UF350,350_QL80_.jpg', // Replace this URL with the URL of your image
            width: 200, // Adjust the width of the image as needed
            height: 200, // Adjust the height of the image as needed
            fit: BoxFit.cover, // Adjust the BoxFit property as needed
          ),
          SizedBox(height: 30), // Adjust the spacing between the image and the text
          Text(
            'No bookings, yet!', // Replace 'Title' with your desired title text
            style: TextStyle(
              fontSize: 24, // Adjust the font size of the title text
              fontWeight: FontWeight.bold, // Optionally, make the title text bold
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child: Text(
              'Search for your next destination & start booking now ', // Replace 'Subtitle' with your desired subtitle text
              textAlign: TextAlign.center, // Align the text to the center
              style: TextStyle(
                fontSize: 18, // Adjust the font size of the subtitle text
              ),
            ),
          ),
          SizedBox(height: 30), // Adjust the spacing between the text and the button
          Container(
            width: 150, // Set the width of the container to match the parent width
            padding: EdgeInsets.symmetric(vertical: 8), // Adjust padding as needed
            decoration: BoxDecoration(
              color: Colors.black, // Set the background color of the button
              borderRadius: BorderRadius.circular(8), // Set border radius for rounded corners
            ),
            child: ElevatedButton(
              onPressed: () {
                // Implement your booking logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Make the button transparent to show the container's background color
                elevation: 0, // Remove elevation
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), // Set button shape
              ),
              child: Text(
                'Book Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16, // Adjust the font size of the button text
                  color: Colors.white, // Set the color of the button text
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
