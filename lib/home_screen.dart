import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigate back to the login screen

              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the username

            Text('Welcome, $username!', style: TextStyle(fontSize: 24)),

            SizedBox(height: 20),

            // Buttons for navigation

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/emergency');
              },
              child: Text('Seek Emergency Help'),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nonEmergency');
              },
              child: Text('Seek Non-Emergency Help'),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/requestMeal');
              },
              child: Text('Request Meal'),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              },
              child: Text('Calendar'),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/takePicture');
              },
              child: Text('Take Picture'),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nearMeMap');
              },
              child: Text('Near Me Map'),
            ),
          ],
        ),
      ),
    );
  }
}
