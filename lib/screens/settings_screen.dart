import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar (content: Text('Homebutton is not available yet')));
          },
          child: Text("Marks Seite"),
        ),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar (content: Text('Settings are not available yet')));
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
}
