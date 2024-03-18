import 'package:flutter/material.dart';
import 'package:pulsator/pulsator.dart';

class HomePageu extends StatelessWidget {
  const HomePageu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floating butoon / butoon robot
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              // the text is here
              padding: const EdgeInsets.all(5),
              color: Colors.black,
              child: const Text(
                'Hi! how can i help you ? ',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            const SizedBox(
              // the distnce between float button and text
              width: 3,
            ),
            // float button
            FloatingActionButton(
              mini: true,
              onPressed: () {
                // what do when press robot butoon
              },
              backgroundColor: const Color(0xff0095FF),
              child: const Icon(Icons.precision_manufacturing),
            ),
          ],
        ),
      ),
      // background image
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/map.png"),
            fit: BoxFit.cover,
          ),
        ),
        // icon car in middle and text
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 120),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Emergency help \n needed !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xff0095FF),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'please only press the button for emergency situation \n false alarms will be with strictly',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 156, 156, 156),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 12,
                ),
                PulseIcon(
                  icon: Icons.car_crash_outlined,
                  pulseColor: Colors.red,
                  iconColor: Colors.white,
                  iconSize: 44,
                  innerSize: 54,
                  pulseSize: 116,
                  pulseCount: 2,
                  pulseDuration: Duration(seconds: 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
