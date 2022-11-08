import 'package:flutter/material.dart';
import 'package:steckbrief_app/screens/start_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StartScreen()));
          },
          child: Text("Marks Seite"),
        ),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {

            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white12,
                    child: Row(
                      children: [
                        settingsLabel(text: "Bist du Mark?"),
                        Container(
                            child: SwitchExample(),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white12,
                    child: Row(
                      children: [
                        settingsLabel(text: "Wie alt bist du?"),
                        const MyStatefulWidget(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      color: Colors.white12,
                      child: Row(
                        children: [
                          settingsLabel(text: "Geburtstag?"),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white12,
                      child: Row(
                      children: [
                        settingsLabel(text: "Click Me!"),
                        MyStatefulWidgetCheckbox(),
                        MyStatefulWidgetCheckbox(),
                        MyStatefulWidgetCheckbox(),
                        MyStatefulWidgetCheckbox(),
                        MyStatefulWidgetCheckbox(),
                      ],
                  )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
          ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar (content: Text('Lightmode is not available yet'))),
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

  Container settingsLabel({text: "Kategorienname"}) {
    return Container(
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: light,
      activeColor: Colors.indigo,
      onChanged: (bool value) {
        setState(() {
          light = value;
        });
      },
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 99,
      divisions: 99,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  }
}


class MyStatefulWidgetCheckbox extends StatefulWidget {
  const MyStatefulWidgetCheckbox({super.key});

  @override
  State<MyStatefulWidgetCheckbox> createState() => _MyStatefulWidgetCheckboxState();
}

class _MyStatefulWidgetCheckboxState extends State<MyStatefulWidgetCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.indigo;
      }
      return Colors.indigo;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

