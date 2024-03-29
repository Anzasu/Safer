import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:geolocator/geolocator.dart';
import 'package:safer/backend/contacts.dart';
import 'package:safer/design_constraints/color.dart';
import 'package:safer/mainpages/home.dart';

class SendLocation extends StatefulWidget {
  const SendLocation({super.key});

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
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Text(
              "Send location",
              style: TextStyle(color: textOnDark, fontSize: 40.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
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
            const SizedBox(height: 50),
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
            const SizedBox(height: 50),
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
            const SizedBox(height: 50),
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
            const SizedBox(height: 100),
            ElevatedButton.icon(
              icon: Icon(Icons.send_rounded, size: 55.0, color: icons),
              label: Text("Send",
                  style: TextStyle(fontSize: 35.0, color: textOnLight)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons, fixedSize: const Size(200, 100)),
              onPressed: () {
                bool success = false;
                bool gotIt = false;
                String coordinates = "";
                getCoordinates(gotIt, coordinates);
                // ignore: dead_code
                if (gotIt) {
                  sendMessage(usedNumbers, success, coordinates);
                  // ignore: dead_code
                  if (success) {
                    final snackBar = SnackBar(
                      content: const Text("Sucessfully sent"),
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
                        "The messages could not be sent correctly. Please check the saved numbers and try again",
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
                } else {
                  final snackBar = SnackBar(
                    content: const Text(
                      "Not able to get your location. Please check your GPS and try again",
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

void getCoordinates(bool gotIt, String coordinates) async {
  Position currentPosition;
  String latitude = "";
  String longitude = "";
  try {
    currentPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    gotIt = true;
    latitude = currentPosition.altitude as String;
    longitude = currentPosition.longitude as String;
    // ignore: prefer_interpolation_to_compose_strings
    coordinates = "Latitude: " + latitude + "  Longitude: " + longitude;
  } catch (error) {
    print(error);
  }
}

void sendMessage(
    List<String> recipients, bool success, String coordinates) async {
  String message =
      "Hey! I don't feel really safe right now. These are my current coordinates:$coordinates";
  try {
    await sendSMS(message: message, recipients: recipients);
    success = true;
  } catch (error) {
    print(error);
  }
}
