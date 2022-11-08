import 'package:flutter/material.dart';

class DatenschutzScreen extends StatelessWidget {
  const DatenschutzScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Datenschutzeinstellungen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
                  "Wir benötigen Ihre Zustimmung",
                style: TextStyle(
                  fontSize: 25,
                )),
            ),
            Container(
              height: 200,
                color: Colors.white,
                child: Text("Wir verwenden verschiedene Technologien")
            ),
            Placeholder(
              child: Container(
                height: 30,
                color: Colors.white,
              )
            ),
            Container(
              height: 250,
                color: Colors.white,
                child: Text("Wir benötigen Ihre Zustimmung")
            ),
            Placeholder(
                child: Container(
                  height: 30,
                  color: Colors.white,
                )
            ),
            ElevatedButton(
              onPressed: () async { // anonyme und asynchrone Funktion
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatenschutzScreen()),
                );
              },
              child: Text("Datenschutz"),
            ),
            ElevatedButton(
              onPressed: () async { // anonyme und asynchrone Funktion
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DatenschutzScreen()),
                );
              },
              child: Text("Datenschutz"),
            ),
            GestureDetector( // macht Widget clickable
              onTap: () {
                Navigator.pop(context);
              },
              child: Text("Datenschutzinformation"),
            )
          ],
        ),
      ),
    );
  }
}
