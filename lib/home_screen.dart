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
              Navigator.pushReplacementNamed(context, '/login');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('User: $username', style: TextStyle(fontSize: 20)),
            Text('Battery: 85%', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/emergency');
              },
              child: Text('Seek Emergency Help'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/nonEmergency');
              },
              child: Text('Seek Non-Emergency Help'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/requestMeal');
              },
              child: Text('Request Meal'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              },
              child: Text('Mark Events (Calendar)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/takePicture');
              },
              child: Text('Take Picture'),
            ),
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
