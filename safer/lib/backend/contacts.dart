import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contact {
  String name = "";
  String number = "";
  int id = 0;

  Contact(int i);

  void setName(String name) {
    this.name = name;
  }

  void setNumber(String number) {
    this.number;
  }

  // void save() async {
  //   // Get an instance of the SharedPreferences
  //   final prefs = await SharedPreferences.getInstance();

  //   // Save the values of the 'name' and 'number' properties
  //   prefs.setString('contact_name', this.name);
  //   prefs.setString('contact_number', this.number);
  // }

  void loadDataFromFile() async {
    var path = "userData/contact.txt";
    var data;
    File(path)
        .openRead()
        .transform(utf8.decoder)
        .transform(LineSplitter())
        .forEach((line) => {
              if (line.substring(0, 0) == id.toString())
                {data = line.substring(2).split('-')}
            });
    if (data[0] == null || data[0] == "") {
      name = "contact" + id.toString();
    } else {
      name = data[0];
    }

    if (data[1] == null || data[0] == "") {
      number = "0000";
    } else {
      number = data[1];
    }
  }

  void saveNewDataInFile() async {
    var path = "userData/contact.txt";
    File(path).openWrite().write(contact1.toString() +
        "\n" +
        contact2.toString() +
        "\n" +
        contact3.toString() +
        "\n" +
        contact4.toString());
  }

  // void load() async {
  //   // Get an instance of the SharedPreferences
  //   final prefs = await SharedPreferences.getInstance();

  //   // Load the values of the 'name' and 'number' properties
  //   this.name = prefs.getString('contact_name') ?? "";
  //   this.number = prefs.getString('contact_number') ?? "";
  // }

  @override
  String toString() {
    String output = id.toString() + " " + name + "-" + number;
    return output;
  }
}

Contact contact1 = new Contact(1);
Contact contact2 = new Contact(2);
Contact contact3 = new Contact(3);
Contact contact4 = new Contact(4);
