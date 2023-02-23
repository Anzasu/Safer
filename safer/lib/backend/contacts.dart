import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contact {
  String name = "";
  String number = "";
  int id = 0;

  Contact(this.id);

  void setName(String name) {
    this.name = name;
  }

  void setNumber(String number) {
    this.number = number;
  }

  // void save() async {
  //   // Get an instance of the SharedPreferences
  //   final prefs = await SharedPreferences.getInstance();

  //   // Save the values of the 'name' and 'number' properties
  //   prefs.setString('contact_name', this.name);
  //   prefs.setString('contact_number', this.number);
  // }

  void loadDataFromFile() async {
    try {
      var file = File('${Directory.current.path}/userData/contact.txt');
      var contents = await file.readAsString();
      var lines = LineSplitter().convert(contents);

      for (var line in lines) {
        if (line.startsWith(this.id.toString())) {
          var data = line.substring(2).split('-');
          this.name = data[0];
          this.number = data[1];
          break;
        }
      }
    } catch (e) {
      print('Error reading contact file: $e');
    }
  }

  void saveNewDataInFile() async {
    try {
      var file = File('${Directory.current.path}/userData/contact.txt');
      var output =
          "${contact1.toString()}\n${contact2.toString()}\n${contact3.toString()}\n${contact4.toString()}";
      await file.writeAsString(output);
    } catch (e) {
      print('Error saving contact file: $e');
    }
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
