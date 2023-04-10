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
import 'package:work2/screens/mainPage.dart';
import 'package:work2/screens/natif_page.dart';
import 'package:work2/screens/person_page.dart';
import 'package:work2/screens/vector_page.dart';
import 'package:work2/src/widgets/appbar.dart';
import 'package:work2/src/widgets/contwidgets.dart';
import 'package:work2/src/widgets/homeKategoriya.dart';
import 'package:work2/src/widgets/homeKcont.dart';
import 'package:work2/src/widgets/textwidgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isTab = true;
  int selectIndex = 2;
  List pagelist = [
    HeartPage(),
    VectorPage(),
    MainPage(),
    Natifpage(),
    PersonPage()
  ];

  void ontapB(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgrColor,
      body: pagelist[selectIndex],
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: selectIndex == 0
                        ? Color(0xefefD9D9D9)
                        : AppColor.whiteColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImage.heart))),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: selectIndex == 1
                        ? Color(0xefefD9D9D9)
                        : AppColor.whiteColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImage.tap))),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: selectIndex == 2
                        ? Color(0xefefD9D9D9)
                        : AppColor.whiteColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImage.home))),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: selectIndex == 3
                        ? Color(0xefefD9D9D9)
                        : AppColor.whiteColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImage.natif))),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: selectIndex == 4
                        ? Color(0xefefD9D9D9)
                        : AppColor.whiteColor,
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(AppImage.person))),
              ),
              label: '',
            ),
          ],
          currentIndex: selectIndex,
          onTap: ontapB,
        ),
      ),
    );
  }
}
