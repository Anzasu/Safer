import 'dart:convert';
import 'dart:io';

class EmergencyNumber {
  String number = "";
  String name = "";

  EmergencyNumber(String name);

  void setNumber(String number) {
    number = number;
  }

  void loadDataFromFile() async {
    var path = "userData/emergency.txt";
    var data;
    File(path)
        .openRead()
        .transform(utf8.decoder)
        .transform(LineSplitter())
        .forEach((line) => {
              if (line.startsWith(this.name)) {data = line.split("-")}
            });

    if (data[1] == null || data[1] == "") {
      number = "0000";
    } else {
      number = data[1];
    }
  }

  void saveNewDataInFile() async {
    var path = "userData/emergency.txt";
    File(path).openWrite().write(police.toString() +
        "\n" +
        firedepartment.toString() +
        "\n" +
        ambulance.toString());
  }

  String toString() {
    return name + "-" + number;
  }
}

EmergencyNumber police = new EmergencyNumber("Police");
EmergencyNumber firedepartment = new EmergencyNumber("Firedepartment");
EmergencyNumber ambulance = new EmergencyNumber("Ambulance");
