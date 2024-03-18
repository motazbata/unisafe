import 'package:flutter/material.dart';
import 'package:unisafe/components/Sign_Button.dart';
import 'package:unisafe/components/myemail_textfiled.dart';
import 'package:unisafe/components/mypass_textfild.dart';
import 'package:unisafe/pages/bottomNavigation.dart';
import 'package:unisafe/sign_up/scan_id.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

// what sign in button do
void signUserIn() {}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // to make sure keybord will not be in widget and make EXCEPTION
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              // text log in or imgae
              const Image(
                image: AssetImage("assets/logo.png"),
                height: 150,
              ),
              const SizedBox(height: 30),

              // welocme back !
              Text(
                'welcome back you\'ve been missed ! ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 25),
              // email
              const MyEmailTextFiled(lenel_text: 'your id ', hint_text: 'enter your id',),
              const SizedBox(
                height: 25,
              ),
              // password
              const MyPassTextFiled(),
              const SizedBox(
                height: 10,
              ),
              //forget pass ?
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('forgot password ? ')],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              // sign in button
              SignButton(
                onTap: () {
                  // we must use function signUserIn but this is just for go to another page // signUserIn ,
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const bottomNavigation();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 25,
              ),
              // not member ? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member? ',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ScanId();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'Register now ! ',
                      style: TextStyle(
                          color: Color(0xff0095FF),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              // pic
            ],
          ),
        ),
      )),
    );
  }
}
