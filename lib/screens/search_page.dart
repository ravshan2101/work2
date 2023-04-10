import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/app/app_icon.dart';
import 'package:work2/app/app_routes.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.only(top: 50),
        height: 95,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(AppIcons.back))),
              child: MaterialButton(onPressed: () {
                Navigator.of(context).pushNamed(AppRouts.home);
              }),
            ),
            ScreenUtil().setHorizontalSpacing(20),
            Container(
              height: 50,
              width: 309,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  color: AppColor.backgrColor,
                  border: Border.all(width: 1, color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(25)),
              child: TextField(
                decoration: InputDecoration(
                    icon: Container(
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/search.png'),
                      )),
                    ),
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
