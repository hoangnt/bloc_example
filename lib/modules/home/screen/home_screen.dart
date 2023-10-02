import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: 100,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              print("object");
            },
            child: Text("press here"),
          ),
        ),
      ),
    );
  }
}
