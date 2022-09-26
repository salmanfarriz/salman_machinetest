import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:machinetest_salman/screens/signup_Screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loginWidget(),
    );
  }

  Widget loginWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Login',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            'Please Login to enter in app.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 75),
          const Text(
            'Enter via social networks.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 16),
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
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [Text('Remember me'), Text('Forgot Password?')],
              ),
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
              child: const Text('Login'),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85),
            child: Row(
              children: [
                const Text('I Dont have an Account?'),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ));
                    },
                    child: const Text('Sign up'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
