import 'package:flutter/material.dart';

class Reobrt extends StatefulWidget {
  const Reobrt({super.key});

  @override
  State<Reobrt> createState() => _ReobrtState();
}

class _ReobrtState extends State<Reobrt> {
  // time picker
  TimeOfDay _time = const TimeOfDay(hour: 00, minute: 00);
  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.lightBlue,
              onPrimary: Colors.lightBlue,
              onSurface: Colors.lightBlue,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.lightBlue, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

// body
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // button of selected time
              onPressed: _selectTime,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.lightBlue,
                ),
              ),
              child: const Text('SELECT TIME'),
            ),
            const SizedBox(height: 8),
            Text(
              'Selected time: ${_time.format(context)}',
            ),
          ],
        ),
      ),
    );
  }
}
