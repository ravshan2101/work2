import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/src/widgets/appbar.dart';
import 'package:work2/src/widgets/contwidgets.dart';
import 'package:work2/src/widgets/redbuttton.dart';
import 'package:work2/src/widgets/textwidgets.dart';

class Natifpage extends StatefulWidget {
  const Natifpage({super.key});

  @override
  State<Natifpage> createState() => _NatifpageState();
}

class _NatifpageState extends State<Natifpage> {
  List items = [
    'asda',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        text: 'Notification',
        actions: [InkWell()],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextWidget(text: 'Уведомления'),
              ScreenUtil().setVerticalSpacing(10),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (ctx, index) {
                      return NotificationTile();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  const NotificationTile({
    super.key,
  });

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  bool isOpened = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: CloseButton(
        ontap: () {
          setState(() {
            isOpened = !isOpened;
          });
        },
      ),
      secondChild: OpenButton(
        onTap: () {
          setState(() {
            isOpened = !isOpened;
          });
        },
      ),
      crossFadeState:
          isOpened ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: Duration(milliseconds: 300),
    );
  }
}

class CloseButton extends StatelessWidget {
  final VoidCallback ontap;
  const CloseButton({
    super.key,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Colors.blueGrey)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Цена на товар Apple mackbook pro m1 снизилась до 13.370.000 сум',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          IconButton(onPressed: ontap, icon: Icon(CupertinoIcons.chevron_down))
        ],
      ),
    );
  }
}

class OpenButton extends StatelessWidget {
  final VoidCallback onTap;
  const OpenButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Цена на товар Apple mackbook pro m1 снизилась до 13.370.000 сум',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              IconButton(
                  onPressed: onTap, icon: Icon(CupertinoIcons.chevron_up))
            ],
          ),
          Container(height: 1, width: double.infinity, color: Colors.blueGrey),
          ScreenUtil().setVerticalSpacing(15),
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 70,
                width: 94,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColor.contColor,
                    image: DecorationImage(
                        image: AssetImage('assets/images/def.png'))),
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Название товара',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '13.370.000 сум',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
          ScreenUtil().setVerticalSpacing(25),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Redbutton(text: 'Смотреть детали')),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
