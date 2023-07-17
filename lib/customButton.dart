import 'package:fiesta_finder/screenSelect.dart';
import 'package:flutter/material.dart';

class CustomButton extends ElevatedButton {
  CustomButton({
    required VoidCallback onPressed,
    required String text,
    required Color colorBack,
    required Color colorFore,
  }) : super(
    onPressed: onPressed,
    style: ButtonStyle(
      elevation: MaterialStateProperty.all<double>(0),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    ),
    child: Container(
      height: 45,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white,width: 1.5),
        color: colorBack,
      ),
      child: Center(
        child: Text(
          text,
          style:  TextStyle(
            fontFamily: "Helvetica",
            fontSize: 16,
            color: colorFore,
          ),
        ),
      ),
    ),
  );
}
