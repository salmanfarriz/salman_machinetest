import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:machinetest_salman/screens/login_screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: signup());
  }

  Widget signup() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign Up',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            'Please sign up to enter in App.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 75),
          const Text(
            'Enter via Social Networks.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  // style: ButtonStyle(backgroundColor: <MaterialStateProperty>),
                  onPressed: () {},
                  child: const Icon(FontAwesomeIcons.twitter),
                ),
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Icon(FontAwesomeIcons.squareFacebook),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Text('or sign up with email'),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 20),
          RadioListTile(
              title: const Text('I agree the Private Policy'),
              value: 1,
              groupValue: 1,
              onChanged: (value) {
                setState(() {});
              }),
          const SizedBox(height: 25),
          SizedBox(
            width: MediaQuery.of(context).size.width - 30,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85),
            child: Row(
              children: [
                const Text('Already have an Account?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: const Text('Login '))
              ],
            ),
          )
        ],
      ),
    );
  }
}
