import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/src/widgets/appbar.dart';
import 'package:work2/src/widgets/person.dart';
import 'package:work2/src/widgets/redbuttton.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  List items = ['O\'zbek', 'Rus', 'Ingiliz'];
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarwidget(
        text: 'Settings',
        actions: [InkWell()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                  child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/person1.png'))),
              )),
              const SizedBox(height: 10),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: const Text(
                    'Войдите, чтобы получать уведомления и удобный доступ к приложению!',
                    textAlign: TextAlign.center,
                  )),
              ScreenUtil().setVerticalSpacing(20),
              Redbutton(text: 'Зарегистрироваться'),
              ScreenUtil().setVerticalSpacing(20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    border: Border.all(width: 1)),
                child: Center(
                    child: Text(
                  'Войти',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                )),
              ),
              ScreenUtil().setVerticalSpacing(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xefefFFEBEC),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/yer.png'))),
                      ),
                      ScreenUtil().setHorizontalSpacing(20),
                      Text(
                        'Til',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  DropdownButton(
                      items: items.map((e) {
                        return DropdownMenuItem(child: Text(e), value: e);
                      }).toList(),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value as String?;
                        });
                      })
                ],
              ),
              ScreenUtil().setVerticalSpacing(10),
              Container(
                  width: double.infinity, height: 1, color: Colors.blueGrey),
              ScreenUtil().setVerticalSpacing(10),
              PersonWid(img: 'assets/images/?.png', text: 'FAQ'),
              ScreenUtil().setVerticalSpacing(10),
              PersonWid(img: 'assets/images/sms.png', text: 'Biz bilan aloqa'),
              ScreenUtil().setVerticalSpacing(10),
              PersonWid(img: 'assets/images/str.png', text: 'Ilovani ulashish'),
              ScreenUtil().setVerticalSpacing(10),
              PersonWid(img: 'assets/images/sorq.png', text: 'Boshqalar'),
            ],
          ),
        ),
      ),
    );
  }
}
