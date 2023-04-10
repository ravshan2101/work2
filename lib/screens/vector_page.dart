import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/app/app_icon.dart';
import 'package:work2/app/app_pages.dart';
import 'package:work2/app/app_routes.dart';
import 'package:work2/src/widgets/appbar.dart';
import 'package:work2/src/widgets/kategoryButton.dart';
import 'package:work2/src/widgets/textwidgets.dart';

class VectorPage extends StatefulWidget {
  const VectorPage({super.key});

  @override
  State<VectorPage> createState() => _VectorPageState();
}

class _VectorPageState extends State<VectorPage> {
  bool isTab = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(text: 'Категории', actions: [InkWell()]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenUtil().setVerticalSpacing(20),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isTab = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: isTab
                                ? AppColor.buttunColor
                                : AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                            child: Text(
                          'Все категории',
                          style: TextStyle(
                              color: isTab ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ),
                  ScreenUtil().setHorizontalSpacing(10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isTab = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: isTab
                                ? AppColor.whiteColor
                                : AppColor.buttunColor,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                            child: Text(
                          'Бренд',
                          style: TextStyle(
                              color: isTab ? Colors.black : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              ScreenUtil().setVerticalSpacing(20),
              TextWidget(
                  text: isTab ? 'Популярные категории' : 'Популярные Бренд'),
              ScreenUtil().setVerticalSpacing(10),
              ButtonsW(h: 150),
              ScreenUtil().setVerticalSpacing(20),
              TextWidget(text: isTab ? 'Все категории' : 'Все Бренд'),
              const SizedBox(height: 10),
              ButtonsW(h: 300),
              
            ],
          ),
        ),
      ),
    );
  }
}
