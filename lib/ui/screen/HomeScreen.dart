import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(Icons.home,color: Colors.white,),
      ),
      body: const Center(
        child: Text('Push Notification Using Firebase'),
      ),

    );
  }
}
