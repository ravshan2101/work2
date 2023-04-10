import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work2/app/app_color.dart';

class SearchW extends StatelessWidget {
  const SearchW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
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
    );
  }
}
