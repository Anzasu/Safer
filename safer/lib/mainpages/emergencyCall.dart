import 'package:flutter/material.dart';
import 'package:safer/backend/emergencyNumbers.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/mainpages/settings.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class EmergencyCall extends StatefulWidget {
  const EmergencyCall({super.key});

  @override
  State<EmergencyCall> createState() => EmergencyCallState();
}

class EmergencyCallState extends State<EmergencyCall> {
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
              "Make An Emergency Call",
              style: TextStyle(color: title, fontSize: 37),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80),
            ElevatedButton.icon(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text(
                    "Not able to call",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  backgroundColor: (background),
                  action: SnackBarAction(
                    label: "dismiss",
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.local_police, size: 55.0, color: icons),
              label: Text(
                "Police",
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 60),
            ElevatedButton.icon(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text(
                    "Not able to call",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  backgroundColor: (background),
                  action: SnackBarAction(
                    label: "dismiss",
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.fire_truck, size: 55.0, color: icons),
              label: Text(
                "Fire Department",
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(250, 100)),
            ),
            SizedBox(height: 60),
            ElevatedButton.icon(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text(
                    "Not able to call",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  backgroundColor: (background),
                  action: SnackBarAction(
                    label: "dismiss",
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: Icon(Icons.local_hospital, size: 55.0, color: icons),
              label: Text(
                "Ambulance",
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
