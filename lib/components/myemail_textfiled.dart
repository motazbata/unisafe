import 'package:flutter/material.dart';

class MyEmailTextFiled extends StatelessWidget {
  const MyEmailTextFiled({super.key, required this.lenel_text, required this.hint_text});
  final String lenel_text ; 
  final String hint_text ;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: lenel_text,
          hintText: hint_text,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}
