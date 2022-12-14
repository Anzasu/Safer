import 'package:flutter/material.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/callContact.dart';
import 'package:safer/mainpages/emergencyCall.dart';
import 'package:safer/mainpages/sendLocation.dart';
import 'package:safer/mainpages/settings.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      floatingActionButton: FloatingActionButton(
        backgroundColor: buttons,
        foregroundColor: icons,
        child: Icon(
          Icons.settings,
          size: 35.0,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Settings()),
          );
        },
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "What do you need?",
              style: TextStyle(color: title, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              "Make sure your GPS is enabled.",
              style: TextStyle(fontSize: 30.0, color: icons),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Please set up the numbers in the settings.",
              style: TextStyle(fontSize: 25.0, color: highlight),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 45),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmergencyCall()),
                );
              },
              icon: Icon(Icons.phone_forwarded, size: 55.0, color: icons),
              label: Text("Emergency Call",
                  style: TextStyle(fontSize: 30.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SendLocation()),
                );
              },
              icon: Icon(Icons.emergency_share_outlined,
                  size: 55.0, color: icons),
              label: Text("Send Location",
                  style: TextStyle(fontSize: 30.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CallContact()),
                );
              },
              icon: Icon(Icons.quick_contacts_dialer_rounded,
                  size: 55.0, color: icons),
              label: Text("Call Contact",
                  style: TextStyle(fontSize: 30.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
          ],
        ),
      ),
    );
  }
}
