import 'package:flutter/material.dart';
import 'package:work2/app/app_color.dart';

class Contan extends StatelessWidget {
  double? h;
  String? text;

  Contan({super.key, this.h});

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
      
      ],
    );
  }
}
