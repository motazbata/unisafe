import 'package:flutter/material.dart';
import 'package:unisafe/notifi_video/video.dart';

import '../notifi_video/notifi.dart';

class NotificationsApp extends StatelessWidget {
  const NotificationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 8,
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          title: const Text(
            'UniSafe',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.lightBlue,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_collection_outlined,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MyNotifications(),
                  MyVideo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
