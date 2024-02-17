import 'dart:convert';
import 'dart:io';

class EmergencyNumber {
  String number = "";
  String name = "";

  EmergencyNumber(this.name);

  void setNumber(String number) {
    number = number;
  }

  void loadDataFromFile() async {
    try {
      var file = File('${Directory.current.path}/userData/emergency.txt');
      var contents = await file.readAsString();
      var lines = const LineSplitter().convert(contents);

      for (var line in lines) {
        if (line.startsWith(name)) {
          var data = line.split("-");
          number = data[1];
          break;
        }
      }
    } catch (e) {
      print('Error reading emergency file: $e');
    }
  }

  void saveNewDataInFile() async {
    try {
      var file = File('${Directory.current.path}/userData/emergency.txt');
      var output =
          "${police.toString()}\n${firedepartment.toString()}\n${ambulance.toString()}";
      await file.writeAsString(output);
    } catch (e) {
      print('Error saving emergency file: $e');
    }
  }

  @override
  String toString() {
    return "$name-$number";
  }
}

EmergencyNumber police = EmergencyNumber("Police");
EmergencyNumber firedepartment = EmergencyNumber("Firedepartment");
EmergencyNumber ambulance = EmergencyNumber("Ambulance");
