import 'package:flutter/material.dart';

import 'Booking.dart';
import 'Home.dart';
import 'Search.dart';
import 'Win.dart';
import 'Need help.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // Define the screens/pages
  final List<Widget> _pages = [
    const HomeScreen(),
    const BookingScreen(),
    const SearchScreen(),
    const WinScreen(),
    const NeedhelpScreen(),

  ];

  // Function to handle navigation bar item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SizedBox(
          height: AppBar().preferredSize.height, // Match the height of the app bar
          child: Image.network(
            'https://qph.cf2.quoracdn.net/main-qimg-b8bf0fbc22cdb8223cbb298ea1c0ca67', // Replace 'https://example.com/logo.png' with your image URL
            fit: BoxFit.contain,
           height: 80,
           width: 80,
           // Adjust the image size to fit the height of the app bar
          ),
        ),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'OYO HOTEL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Container(
                decoration: BoxDecoration(
                  color: Colors.red, // Box color
                  borderRadius: BorderRadius.circular(5.0), // Box radius
                  // border: Border.all(color: Colors.black, width: 1.0), // Adding border
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10), // Adding padding of 10 to all sides
                  child: Text(
                    'Book your 1st OYO from Rs.399',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),


            ListTile(
              title: Text('Invite & Earn'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('OYO Wizard - Blue'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('View Wallets'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Keep going'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('View saved OYOs'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text('Need help'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Change language'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: Text('View privacy polocy'),
              onTap: () {
                // Update the UI based on the item selected
                // Close the drawer
                Navigator.pop(context);
              },
            ),
            // Add more ListTiles for additional items in the drawer if needed
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gif_box),
            label: 'Win 6000',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot_outlined),
            label: 'Need help',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54, // Set unselected item color to red
        onTap: _onItemTapped,
      ),

    );
  }
}