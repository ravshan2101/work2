import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/app/app_icon.dart';

class Appbarwidget extends StatelessWidget implements PreferredSize {
  String? text;

  Appbarwidget({super.key, this.text, required List<InkWell> actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColor.whiteColor,
      title: Container(
        alignment: Alignment.topLeft,
        child: Text(
          text!,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      automaticallyImplyLeading: false,
      leading: Container(
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AppIcons.logatipIcon))),
      ),
    );
  }

  @override
  Widget get child => child;

  @override
  Size get preferredSize => Size(double.infinity, 60);
}
