import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea( // verhindert Ueberlagerungen
      child: Scaffold(
        appBar: AppBar(
          title: Text("Stack Beispiel"),
        ),
        body: Stack(  // wie position: absolute
          children: [
            Container(
              width: width,
              height: height,
              color: Colors.indigo,
            ),
            Positioned(
              top: 200,
              right: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.white12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
