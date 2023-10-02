import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Text("LEVEL: 75"),
            Slider(
              max: 5,
              divisions: 5,
              value: 3,
              onChanged: (val) {},
            ),
          ],
        ),
      ),
    );
  }
}
