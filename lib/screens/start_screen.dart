import 'package:flutter/material.dart';
import 'package:steckbrief_app/screens/settings_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar (content: Text('You are already at home!')));
          },
          child: Text("Marks Seite"),
        ),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsScreen()),
                );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width/2,
                      child: Image.asset("assets/wingler.jpg")),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child:Text(
                      "Mark Baena",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              macheZeile(
                text: "Alter: 21",
              ),
              macheZeile(
                text: "Augenfarbe: grün",
              ),
              macheZeile(),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {

        },
        child: Icon(Icons.brightness_4_rounded)
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'About Me',
          ),
        ],
      ),
    );
  }

  Widget macheZeile({text: "Hello"}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.black38,
        width: 300,
        child: Text(
            text,
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              //backgroundColor: Colors.blue,
              fontStyle: FontStyle.italic,
              color: Colors.indigo,
            )),
      ),
    );
  }
}
