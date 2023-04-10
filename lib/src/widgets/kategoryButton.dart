import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/app/app_routes.dart';

class ButtonsW extends StatelessWidget {
  double? h;

  ButtonsW({
    super.key,
    this.h,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      child: GridView.builder(
          itemCount: 12,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 75, crossAxisCount: 3),
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRouts.breand);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Center(
                      child: Container(
                          padding: const EdgeInsets.only(left: 13),
                          height: 32,
                          width: 98,
                          child: Text("""Название категории"""))),
                ),
              ),
            );
          }),
    );
  }
}
