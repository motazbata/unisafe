import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:unisafe/login/login.dart';
import 'package:unisafe/sign_up/sign_up_page.dart';

class ScanId extends StatelessWidget {
  const ScanId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              'Sign up for the app',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'by scanning your ID',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Lottie.asset('anmition/scan_id_pho.json', fit: BoxFit.cover),

          // button for take photo
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              elevation: 0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LogIn();
                }),
              );
            },
            child: const Text(
              "Take Snap",
            ),
          ),
          // button to choose photo from galary
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              elevation: 0,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SignUp();
                }),
              );
            },
            child: const Text("choose photo "),
          ),
        ],
      ),
    ));
  }
}
