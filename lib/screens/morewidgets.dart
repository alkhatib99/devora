// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

extension MoreWidgets on dynamic {
  static String gender = "";
  static String material = "";
  static const double _value = 0.0;
  static String firstName = "", lastName = "";
  static TextEditingController controller1 = controller1;
  static TextEditingController controller2 = controller2;
  // ignore: unused_field
  Widget buildTextFields(
      String label, TextEditingController controllerFirstName) {
    MoreWidgets.controller1 = controllerFirstName;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      child: Column(
        children: [
          TextField(
            autofillHints: const [],
            decoration: InputDecoration(
                border: const OutlineInputBorder(), labelText: label),
            controller: controllerFirstName,
          ),
        ],
      ),
    );
  }

  Widget buildRadioButtons() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Radio(
            value: gender,
            groupValue: const [],
            hoverColor: Colors.lightGreen,
            onChanged: <String>(value) {
              setState(() {
                gender = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget buildDropDownList() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          DropdownButton<String>(
            items: <String>['Single', 'Married', 'prefer not to answer']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: <String>(value) {
              setState(() {
                material = value;
              });
            },
          )
        ],
      ),
    );
  }

  Widget buildElevetedButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: RaisedButton(
        onPressed: () {
          _sendData();
        },
        child: const Text(
          'Send Data',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  void _sendData() {
    String firstName = MoreWidgets.controller1.text;
    String lastName = MoreWidgets.controller2.text;
    String gen = MoreWidgets.gender;
    String materialStatus = MoreWidgets.material;
    double value = MoreWidgets._value;
    String par = "FirstName: " +
        firstName +
        "\nLastName: " +
        lastName +
        "\nGender: " +
        gen +
        "\nMaterial Status: " +
        materialStatus +
        "\nLove Flutter: " +
        value.toString();
  }
}
