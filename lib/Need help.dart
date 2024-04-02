import 'package:flutter/material.dart';

class NeedhelpScreen extends StatelessWidget {
  const NeedhelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://static.vecteezy.com/system/resources/previews/023/208/438/non_2x/thank-you-speech-bubble-banner-design-set-of-chat-message-speech-bubble-illustration-vector.jpg', // Replace with your image URL
              height: 260,
              width: 100, // Specify the width of the image
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
          Positioned(
            top: 270, // Adjust the top position of the text widgets
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'OYO Help Assistant',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'We are here for your queries',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: 350),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'What is your booking ID?',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue, // Set the background color
                      borderRadius: BorderRadius.circular(8), // Set border radius
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Add functionality for the button here
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Proceed',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold// Set text color
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),




        ],
      ),
    );
  }
}
