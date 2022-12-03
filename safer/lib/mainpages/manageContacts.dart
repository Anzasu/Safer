import 'package:flutter/material.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/editorpages/editContact1.dart';
import 'package:safer/editorpages/editContact2.dart';
import 'package:safer/editorpages/editContact3.dart';
import 'package:safer/editorpages/editContact4.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/mainpages/settings.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class Contactmanager extends StatefulWidget {
  const Contactmanager({super.key});

  @override
  State<Contactmanager> createState() => ContactmanagerState();
}

class ContactmanagerState extends State<Contactmanager> {
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
            child: Icon(Icons.settings, size: 35.0),
            foregroundColor: highlight,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              "Manage Contacts",
              style: TextStyle(color: title, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Editor1()),
                );
              },
              icon: Icon(Icons.edit, size: 55.0, color: icons),
              label: Text(contact1.name,
                  style: TextStyle(fontSize: 30.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Editor2()),
                );
              },
              icon: Icon(Icons.edit, size: 55.0, color: icons),
              label: Text(
                contact2.name,
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Editor3()),
                );
              },
              icon: Icon(Icons.edit, size: 55.0, color: icons),
              label: Text(
                contact3.name,
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Editor4()),
                );
              },
              icon: Icon(Icons.edit, size: 55.0, color: icons),
              label: Text(
                contact4.name,
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
          ],
        ),
      ),
    );
  }
}
