import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/src/widgets/appbar.dart';
import 'package:work2/src/widgets/contwidgets.dart';
import 'package:work2/src/widgets/heart_contanier.dart';
import 'package:work2/src/widgets/search.dart';
import 'package:work2/src/widgets/textwidgets.dart';

class HeartPage extends StatefulWidget {
  const HeartPage({super.key});

  @override
  State<HeartPage> createState() => _HeartPageState();
}

class _HeartPageState extends State<HeartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        text: 'Избранное',
        actions: [InkWell()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              SearchW(),
              SizedBox(height: 20.h),
              TextWidget(text: 'У вас есть 5 сохранённых объявлений'),
              SizedBox(height: 10.h),
              Heart_Cantanier()
            ],
          ),
        ),
      ),
    );
  }
}
