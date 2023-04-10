import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/main.dart';
import 'package:work2/screens/mainPage.dart';
import 'package:work2/src/widgets/textwidgets.dart';

class Redbutton extends StatelessWidget {
  String text;

  Redbutton({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.buttunColor, borderRadius: BorderRadius.circular(25)),
      child: Center(

          child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
      )),
    );
  }
}
