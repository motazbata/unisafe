import 'package:flutter/material.dart';

class MyVideo extends StatelessWidget {
  const MyVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
        return const ListTile(
          leading: Icon(
            Icons.video_camera_front_outlined,
            color: Colors.lightBlue,
            size: 50,
          ),
          title: Text('test text '),
          subtitle: Text('this is just test text '),
          trailing: Icon(
            Icons.play_arrow,
            color: Colors.lightBlue,
            size: 40,
          ),
        );
      },
    ));
  }
}
