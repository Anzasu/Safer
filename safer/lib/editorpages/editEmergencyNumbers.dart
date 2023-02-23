import 'package:flutter/material.dart';
import 'package:safer/backend/emergency.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/mainpages/settings.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class EditorEmergency extends StatefulWidget {
  @override
  State<EditorEmergency> createState() => EditorEmergencyState();
}

class EditorEmergencyState extends State<EditorEmergency> {
  String policeNr = "";
  String firedepNr = "";
  String ambulanceNr = "";

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Manage Emergency Numbers",
                style: TextStyle(fontSize: 40.0, color: title),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 60),
              SizedBox(
                width: 350,
                child: TextFormField(
                  controller: TextEditingController(),
                  onChanged: (String? value) {
                    if (value != null) {
                      policeNr = value;
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
                  maxLength: 10,
                  maxLines: 1,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                width: 350,
                child: TextFormField(
                  controller: TextEditingController(),
                  onChanged: (String? value) {
                    if (value != null) {
                      firedepNr = value;
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
                  maxLength: 10,
                  maxLines: 1,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                width: 350,
                child: TextFormField(
                  controller: TextEditingController(),
                  onChanged: (String? value) {
                    if (value != null) {
                      ambulanceNr = value;
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
                  maxLength: 10,
                  maxLines: 1,
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton.icon(
                  onPressed: () {
                    if (policeNr != null || policeNr != "") {
                      police.setNumber(policeNr);
                    }

                    if (firedepNr != null || firedepNr != "") {
                      firedepartment.setNumber(firedepNr);
                    }

                    if (ambulanceNr != null || ambulanceNr != "") {
                      ambulance.setNumber(ambulanceNr);
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
            ],
          ),
        ),
      ),
    );
  }
}
