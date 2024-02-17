import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';
import 'package:safer/mainpages/settings.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

class CallContact extends StatefulWidget {
  const CallContact({super.key});

  @override
  State<CallContact> createState() => CallContactState();
}

class CallContactState extends State<CallContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      floatingActionButton: SpeedDial(
        closedForegroundColor: highlight,
        openForegroundColor: highlight,
        closedBackgroundColor: buttons,
        openBackgroundColor: background,
        speedDialChildren: <SpeedDialChild>[
          SpeedDialChild(
            child: const Icon(Icons.home, size: 35.0),
            foregroundColor: highlight,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.settings, size: 35.0),
            foregroundColor: highlight,
            backgroundColor: buttons,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
        ],
        child: const Icon(Icons.menu, size: 35.0),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Text(
              "Call A Contact",
              style: TextStyle(color: title, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            ElevatedButton.icon(
              onPressed: () {
                bool called = false;
                if (!called) {
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
                }
              },
              icon: Icon(Icons.call, size: 55.0, color: icons),
              label: Text(contact1.name,
                  style: TextStyle(fontSize: 30.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: const Size(250, 100)),
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                bool called = false;
                if (!called) {
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
                }
              },
              icon: Icon(Icons.call, size: 55.0, color: icons),
              label: Text(
                contact2.name,
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: const Size(250, 100)),
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                bool called = false;

                if (!called) {
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
                }
              },
              icon: Icon(Icons.call, size: 55.0, color: icons),
              label: Text(
                contact3.name,
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: const Size(250, 100)),
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed: () {
                bool called = false;
                callContact(contact4.number, called);
                if (!called) {
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
                }
              },
              icon: Icon(Icons.call, size: 55.0, color: icons),
              label: Text(
                contact4.name,
                style: TextStyle(fontSize: 30.0, color: textOnLight),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: const Size(250, 100)),
            ),
          ],
        ),
      ),
    );
  }
}

callContact(String number, bool called) async {
  bool? res = await FlutterPhoneDirectCaller.callNumber(number);
  called = res!;
}
