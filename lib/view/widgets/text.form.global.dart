import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal(
      {Key? key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure,
      required String? Function(dynamic value),
      required this.validator})
      : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final Function validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 10, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3)]),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(0),
            hintStyle: const TextStyle(height: 1)),
      ),
    );
  }
}
