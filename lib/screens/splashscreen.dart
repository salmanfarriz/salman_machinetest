import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Text('Please Login or Sign up to continue using our app.'),
              const SizedBox(height: 80),
              SizedBox(
                height: 300,
                width: 330,
                child: Image.asset('lib/assets/images/splash.jpeg'),
              ),
              const SizedBox(height: 260),
              const Text(
                'Powered By Softpal',
                style: TextStyle(color: Color.fromARGB(255, 62, 62, 62)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
