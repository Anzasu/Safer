import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Contact {
  String name = "";
  String number = "";

  void setName(String name) {
    this.name = name;
  }

  void setNumber(String number) {
    this.number;
  }

  void save() async {
    // Get an instance of the SharedPreferences
    final prefs = await SharedPreferences.getInstance();

    // Save the values of the 'name' and 'number' properties
    prefs.setString('contact_name', this.name);
    prefs.setString('contact_number', this.number);
  }

  void load() async {
    // Get an instance of the SharedPreferences
    final prefs = await SharedPreferences.getInstance();

    // Load the values of the 'name' and 'number' properties
    this.name = prefs.getString('contact_name') ?? "";
    this.number = prefs.getString('contact_number') ?? "";
  }
}

Contact contact1 = new Contact();
Contact contact2 = new Contact();
Contact contact3 = new Contact();
Contact contact4 = new Contact();
