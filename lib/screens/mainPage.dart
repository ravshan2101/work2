import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/app/app_icon.dart';
import 'package:work2/app/app_images.dart';
import 'package:work2/app/app_routes.dart';
import 'package:work2/screens/heart_page.dart';
import 'package:work2/screens/natif_page.dart';
import 'package:work2/screens/person_page.dart';
import 'package:work2/screens/vector_page.dart';
import 'package:work2/src/widgets/appbar.dart';
import 'package:work2/src/widgets/contwidgets.dart';
import 'package:work2/src/widgets/homeKategoriya.dart';
import 'package:work2/src/widgets/homeKcont.dart';
import 'package:work2/src/widgets/redbuttton.dart';
import 'package:work2/src/widgets/textwidgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isTab = true;
  bool isTab2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        text: 'Price Hunter',
        actions: [
          InkWell(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(AppIcons.notifIcon))),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenUtil().setVerticalSpacing(20),
              TextWidget(
                text: 'Мы помогаем сохранить ваши деньги',
              ),
              Container(
                height: 50,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: AppColor.backgrColor,
                    border: Border.all(width: 1, color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  readOnly: true,
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRouts.search);
                  },
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
              Contan(h: 180),
              ScreenUtil().setVerticalSpacing(10),
              Row(
                children: [
                  Expanded(
                      child: Contan(
                    h: 125,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Contan(
                    h: 125,
                  ))
                ],
              ),
              ScreenUtil().setVerticalSpacing(20),
              TextWidget(
                text: 'Популярные товары',
              ),
              ScreenUtil().setVerticalSpacing(10),
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
                          'Все товары',
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
                          'По лучшей цене',
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
              ScreenUtil().setVerticalSpacing(10),
              HomeCW(),
              ScreenUtil().setVerticalSpacing(20),
              HomePagev(),
              ScreenUtil().setVerticalSpacing(10),
              Redbutton(
                text: 'Смотреть детали',
              ),
              ScreenUtil().setVerticalSpacing(20),
              TextWidget(text: 'Лучшее падение цен'),
              ScreenUtil().setVerticalSpacing(10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isTab2 = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: isTab2
                                ? AppColor.buttunColor
                                : AppColor.whiteColor,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                            child: Text(
                          'Самые последние',
                          style: TextStyle(
                              color: isTab2 ? Colors.white : Colors.black,
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
                          isTab2 = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: isTab2
                                ? AppColor.whiteColor
                                : AppColor.buttunColor,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Center(
                            child: Text(
                          'Лучшие ежедневные',
                          style: TextStyle(
                              color: isTab2 ? Colors.black : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              ScreenUtil().setVerticalSpacing(10),
              HomePagev(),
              ScreenUtil().setVerticalSpacing(10),
              Redbutton(text: 'Смотреть детали')
            ],
          ),
        ),
      ),
    );
  }
}
