import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
      ),
      body: Center(
        child: Column(
          children: [
            Placeholder(
              color: Colors.white12,
              child: SizedBox(
                width: 200,
                height: 300,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            GestureDetector( // macht Widget clickable
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 200,
                height: 70,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
