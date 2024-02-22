import 'package:flutter/material.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("settingScreen",
        style:TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,

        ),),
    );
  }
}
