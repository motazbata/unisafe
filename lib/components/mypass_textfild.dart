import 'package:flutter/material.dart';

class MyPassTextFiled extends StatefulWidget {
  const MyPassTextFiled({super.key});

  @override
  State<MyPassTextFiled> createState() => _MyPassTextFiledState();
}

class _MyPassTextFiledState extends State<MyPassTextFiled> {
  // Initially password is obscure
  bool _passwordVisible = false;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: !_passwordVisible, //This will obscure text dynamically
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,

          labelText: 'Password',
          hintText: 'Enter your password',
          // Here is key idea
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: const Color(0xff0095FF),
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
