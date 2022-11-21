import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {

  String hintText;
  String labelText;
  String validationMsg;
  TextEditingController controller;

  InputForm({super.key, 
    required this.hintText, 
    required this.labelText,
    required this.validationMsg,
    required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
      ),
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validationMsg;
        }
        return null;
      },
    );
  }
}
