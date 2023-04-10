import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonWid extends StatelessWidget {
  String img;
  String text;

  PersonWid({super.key, required this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 50.h,
                  width: 50.h,
                  decoration: BoxDecoration(
                      color: Color(0xefefFFEBEC),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(img))),
                ),
                ScreenUtil().setHorizontalSpacing(20),
                Text(
                  text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
            IconButton(
                onPressed: () {}, icon: Icon(CupertinoIcons.chevron_right))
          ],
        ),
        SizedBox(height: 10),
        Container(width: double.infinity, height: 1, color: Colors.blueGrey),
      ],
    );
  }
}
