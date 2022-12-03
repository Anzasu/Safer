import 'package:flutter/material.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/mainpages/manageContacts.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class Editor1 extends StatefulWidget {
  @override
  State<Editor1> createState() => Editor1State();
}

class Editor1State extends State<Editor1> {
  String name = "";
  String number = "";

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
              "Contact 1",
              style: TextStyle(fontSize: 40.0, color: title),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            SizedBox(
              width: 350,
              child: TextFormField(
                controller: TextEditingController(),
                onChanged: (String? value) {
                  if (value != null) {
                    name = value;
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
                controller: TextEditingController(),
                onChanged: (String? value) {
                  if (value != null) {
                    number = value;
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
                    contact1.setName(name);
                  }

                  if (number != null || number != "") {
                    contact1.setNumber(number);
                  }
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
