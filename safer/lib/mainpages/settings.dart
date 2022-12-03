import 'package:flutter/material.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/mainpages/manageContacts.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttons,
        foregroundColor: icons,
        child: const Icon(
          Icons.home,
          size: 35.0,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );
        },
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              "Settings",
              style: TextStyle(color: title, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 150),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contactmanager()),
                );
              },
              icon: Icon(Icons.group_add_outlined, size: 55.0, color: icons),
              label: Text("Manage Contacts",
                  style: TextStyle(fontSize: 30.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 85),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add_call, size: 55.0, color: icons),
              label: Text(
                "Manage Emergency Numbers",
                style: TextStyle(fontSize: 25.0, color: textOnLight),
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
