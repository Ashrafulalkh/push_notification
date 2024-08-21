import 'package:flutter/material.dart';
import 'package:push_notification/ui/screen/HomeScreen.dart';

class PushNotification extends StatelessWidget {
  const PushNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
