import 'package:flutter/material.dart';

class WinScreen extends StatelessWidget {
  const WinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Specify the number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Invite & Earn',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Invite'),
              Tab(text: 'Rewards'),
              Tab(text: 'FAQ'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Invite Content')),
            // Rewards Tab Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://www.slimfoldwallet.com/cdn/shop/files/Square_MSS4_1800x.jpg?v=1699661720 ', // Replace with your image URL
                  width: 200, // Set width as needed
                  height: 200, // Set height as needed
                ),
                const SizedBox(height: 20),
                const Text(
                  'No rewards, yet!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Invite friends on OYO and get rewarded',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Center(child: Text('FAQ Content')),
          ],
        ),
      ),
    );
  }
}
