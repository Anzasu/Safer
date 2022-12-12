import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';

class SendLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SendLocationState();
}

class SendLocationState extends State<SendLocation> {
  List<String> usedNumbers = <String>[];
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
                    if (value1 == true &&
                        !usedNumbers.contains(contact1.number)) {
                      usedNumbers.add(contact1.number);
                    } else if (value1 == false &&
                        usedNumbers.contains(contact1.number)) {
                      usedNumbers.remove(contact1.number);
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
                    if (value2 == true &&
                        !usedNumbers.contains(contact2.number)) {
                      usedNumbers.add(contact2.number);
                    } else if (value2 == false &&
                        usedNumbers.contains(contact2.number)) {
                      usedNumbers.remove(contact2.number);
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
                    if (value3 == true &&
                        !usedNumbers.contains(contact3.number)) {
                      usedNumbers.add(contact3.number);
                    } else if (value2 == false &&
                        usedNumbers.contains(contact3.number)) {
                      usedNumbers.remove(contact3.number);
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
                    if (value4 == true &&
                        !usedNumbers.contains(contact4.number)) {
                      usedNumbers.add(contact4.number);
                    } else if (value4 == false &&
                        usedNumbers.contains(contact4.number)) {
                      usedNumbers.remove(contact4.number);
                    }
                  });
                },
              ),
            ),
            SizedBox(height: 100),
            ElevatedButton.icon(
              icon: Icon(Icons.send_rounded, size: 55.0, color: icons),
              label: Text("Send",
                  style: TextStyle(fontSize: 35.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: Size(200, 100)),
              onPressed: () {
                bool success = false;
                sendMessage(usedNumbers, success);
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
            ),
          ],
        ),
      ),
    );
  }
}

void sendMessage(List<String> recipients, bool success) async {
  String message =
      "Hey! I don't feel really safe right now. These are my current koordinates:" +
          "[Koordinates]";
  try {
    await sendSMS(message: message, recipients: recipients);
    success = true;
  } catch (error) {
    print(error);
  }
}
