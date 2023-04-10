import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/app/app_images.dart';

class HomeCW extends StatelessWidget {
  const HomeCW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Все категории',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            GestureDetector(
                onTap: () {},
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImage.back))),
                ))
          ],
        ));
  }
}
