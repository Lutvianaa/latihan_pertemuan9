import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulating a delay of 8 seconds for splash screen
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your logo goes here
            Image.asset(
              'assets/logo.png', // Replace with your logo asset path
              width: 100,
              height: 100,
              // Adjust width and height as needed
            ),
            SizedBox(height: 20), // Adding space between logo and text
            Text(
              'Recipe Manager App',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
