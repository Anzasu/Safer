import 'package:flutter/material.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';
import 'package:telephony/telephony.dart';

class SendLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendLocationState();
}

class SendLocationState extends State<SendLocation> {
  List<Contact> usedNumbers = <Contact>[];
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

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
              "Send location",
              style: TextStyle(color: textOnDark, fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: CheckboxListTile(
                title: Text(
                  contact1.name,
                  style: TextStyle(
                    color: textOnDark,
                    fontSize: 25.0,
                  ),
                ),
                checkColor: background,
                activeColor: highlight,
                value: value1,
                onChanged: (bool? value) {
                  setState(() {
                    value1 = value!;
                    if (value1 == true && !usedNumbers.contains(contact1)) {
                      usedNumbers.add(contact1);
                    } else if (value1 == false &&
                        usedNumbers.contains(contact1)) {
                      usedNumbers.remove(contact1);
                    }
                  });
                },
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: CheckboxListTile(
                title: Text(
                  contact2.name,
                  style: TextStyle(
                    color: textOnDark,
                    fontSize: 25.0,
                  ),
                ),
                checkColor: background,
                activeColor: highlight,
                value: value2,
                onChanged: (bool? value) {
                  setState(() {
                    value2 = value!;
                    if (value2 == true && !usedNumbers.contains(contact2)) {
                      usedNumbers.add(contact2);
                    } else if (value2 == false &&
                        usedNumbers.contains(contact2)) {
                      usedNumbers.remove(contact2);
                    }
                  });
                },
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: CheckboxListTile(
                title: Text(
                  contact3.name,
                  style: TextStyle(
                    color: textOnDark,
                    fontSize: 25.0,
                  ),
                ),
                checkColor: background,
                activeColor: highlight,
                value: value3,
                onChanged: (bool? value) {
                  setState(() {
                    value3 = value!;
                    if (value3 == true && !usedNumbers.contains(contact3)) {
                      usedNumbers.add(contact3);
                    } else if (value2 == false &&
                        usedNumbers.contains(contact3)) {
                      usedNumbers.remove(contact3);
                    }
                  });
                },
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              width: 250,
              child: CheckboxListTile(
                title: Text(
                  contact4.name,
                  style: TextStyle(
                    color: textOnDark,
                    fontSize: 25.0,
                  ),
                ),
                checkColor: background,
                activeColor: highlight,
                value: value4,
                onChanged: (bool? value) {
                  setState(() {
                    value4 = value!;
                    if (value4 == true && !usedNumbers.contains(contact4)) {
                      usedNumbers.add(contact4);
                    } else if (value4 == false &&
                        usedNumbers.contains(contact2)) {
                      usedNumbers.remove(contact4);
                    }
                  });
                },
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton.icon(
              onPressed: () {
                bool success = false;
                // Code for sending the sms here [...]
                // ignore: dead_code
                if (success) {
                  final snackBar = SnackBar(
                    content: Text("Sucessfully sent"),
                    backgroundColor: (background),
                    action: SnackBarAction(
                      label: "dismiss",
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  final snackBar = SnackBar(
                    content: const Text(
                      "Not sent! Please make sure all numbers are correct.",
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
              icon: Icon(Icons.send_rounded, size: 55.0, color: icons),
              label: Text("Send",
                  style: TextStyle(fontSize: 35.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(200, 100)),
            ),
          ],
        ),
      ),
    );
  }
}
