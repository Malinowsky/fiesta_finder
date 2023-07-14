import 'package:fiesta_finder/screenSelect.dart';
import 'package:flutter/material.dart';

class CustomButton extends ElevatedButton {
  CustomButton({
    required VoidCallback onPressed,
    required String text,
  }) : super(
    onPressed: onPressed,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(0),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black,width: 1),
      ),
      child: Padding(
      padding: EdgeInsets.only(top: ScreenSelect.height15,bottom: ScreenSelect.height15,left: ScreenSelect.width60,right: ScreenSelect.width60),
      child: Text(text,style: const TextStyle(fontFamily: 'Helvetica',fontSize: 16)),
      )
    ),
  );
}
