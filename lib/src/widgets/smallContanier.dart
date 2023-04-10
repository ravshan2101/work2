import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/app/app_color.dart';

class SmallCont extends StatelessWidget {
  double? h;
  String? text;

  SmallCont({super.key, this.h});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: h,
          decoration: BoxDecoration(
              color: AppColor.contColor,
              image:
                  DecorationImage(image: AssetImage('assets/images/def.png')),
              borderRadius: BorderRadius.circular(10)),
        ),
        ScreenUtil().setVerticalSpacing(10),
        Text(
          'Название товара',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Text(
          '3.620.000 сум',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
