import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final Color backgroundColor;
  final Color textColor;

  const CustomTextField({
    required this.controller,
    required this.labelText,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 1.5),
        color: widget.backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          controller: widget.controller,
          style: TextStyle(
            fontFamily: "Helvetica",
            fontSize: 16,
            color: widget.textColor,
          ),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelText: widget.labelText,
            labelStyle: TextStyle(
              color: widget.textColor,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
