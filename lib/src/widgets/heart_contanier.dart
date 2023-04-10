
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:work2/app/app_color.dart';

class Heart_Cantanier extends StatelessWidget {
  const Heart_Cantanier({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (ctx, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 94,
                      margin:
                          const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColor.contColor,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/def.png'))),
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Название товара',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '13.370.000 сум',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.heart,
                    ))
              ],
            );
          }),
    );
  }
}
