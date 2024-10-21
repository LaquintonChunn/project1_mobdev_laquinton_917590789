import 'package:flutter/material.dart';

import 'login_screen.dart';

import 'home_screen.dart';

import 'emergency_help_screen.dart';

import 'non_emergency_help_screen.dart';

import 'request_meal_screen.dart';

import 'calendar_screen.dart';

import 'picture_taking_screen.dart';

import 'near_me_map_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation App',

      initialRoute: '/login', // Start with the login screen

      routes: {
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(
              username: ModalRoute.of(context)!.settings.arguments as String,
            ),
        '/emergency': (context) => EmergencyHelpScreen(),
        '/nonEmergency': (context) => NonEmergencyHelpScreen(),
        '/requestMeal': (context) => RequestMealScreen(),
        '/calendar': (context) => CalendarScreen(),
        '/takePicture': (context) => PictureTakingScreen(),
        '/nearMeMap': (context) => NearMeMapScreen(),
      },
    );
  }
}
