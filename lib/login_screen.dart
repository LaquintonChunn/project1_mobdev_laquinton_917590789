import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Username Text Field

            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),

            SizedBox(height: 20),

            // Login Button

            ElevatedButton(
              onPressed: () {
                // Navigate to HomeScreen and pass the username as an argument

                Navigator.pushReplacementNamed(
                  context,
                  '/home',
                  arguments: _usernameController.text,
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
