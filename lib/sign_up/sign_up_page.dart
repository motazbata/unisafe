import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 30),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'UniSafe App',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'Sign up for UniSafe App.',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Already have account? ',
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  Text(
                    'log in',
                    style: TextStyle(fontSize: 17, color: Colors.deepPurple),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
