import 'package:flutter/material.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/mainpages/manageContacts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class Editor4 extends StatefulWidget {
  @override
  State<Editor4> createState() => Editor4State();
}

class Editor4State extends State<Editor4> {
  String? name = "";
  String? number = "";
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    retrieveName();
    retrieveNumber();
  }

//Methods for Name
  Future<void> retrieveName() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('name')) {
      return;
    }

    setState(() {
      name = prefs.getString('name');
    });
  }

  Future<void> saveName() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', nameController.text);
  }

  Future<void> clearName() async {
    final prefs = await SharedPreferences.getInstance();
    // Check where the name is saved before or not
    if (!prefs.containsKey('name')) {
      return;
    }

    await prefs.remove('name');
    setState(() {
      name = "";
    });
  }

// Methods for Number
  Future<void> retrieveNumber() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey('number')) {
      return;
    }

    setState(() {
      number = prefs.getString('number');
    });
  }

  Future<void> saveNumber() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('number', numberController.text);
  }

  Future<void> clearNumber() async {
    final prefs = await SharedPreferences.getInstance();
    // Check where the name is saved before or not
    if (!prefs.containsKey('number')) {
      return;
    }

    await prefs.remove('number');
    setState(() {
      number = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      floatingActionButton: SpeedDial(
        closedForegroundColor: highlight,
        openForegroundColor: highlight,
        closedBackgroundColor: buttons,
        openBackgroundColor: background,
        child: Icon(Icons.menu, size: 35.0),
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: Icon(Icons.home, size: 35.0),
            foregroundColor: highlight,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          SpeedDialChild(
            child: Icon(Icons.arrow_back, size: 35.0),
            foregroundColor: highlight,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contactmanager()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Text(
              "Contact 4",
              style: TextStyle(fontSize: 40.0, color: title),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: nameController,
                onChanged: (String? value) {
                  if (value != null) {
                    saveName();
                  }
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: buttons,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    hintStyle: TextStyle(color: textOnLight, fontSize: 19.0),
                    hintText: "Type NAME here and click on check"),
                maxLength: 30,
                maxLines: 1,
                cursorColor: Colors.white,
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: numberController,
                onChanged: (String? value) {
                  saveNumber();
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: buttons,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    hintStyle: TextStyle(color: textOnLight, fontSize: 19.0),
                    hintText: "Type NUMBER here and click on check"),
                maxLength: 30,
                maxLines: 1,
                cursorColor: Colors.white,
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
                onPressed: () {
                  if (name != null || name != "") {
                    contact4.setName(name!);
                  }

                  if (number != null || number != "") {
                    contact4.setNumber(number!);
                  }
                  contact4.save();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: buttons, fixedSize: Size(180, 70)),
                icon: Icon(
                  Icons.save,
                  color: highlight,
                ),
                label: Text("Save Contact",
                    style: TextStyle(color: highlight, fontSize: 19.0)))
          ]),
        ),
      ),
    );
  }
}
