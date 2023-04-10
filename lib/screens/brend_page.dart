import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/app/app_icon.dart';
import 'package:work2/app/app_routes.dart';
import 'package:work2/src/widgets/appbar.dart';
import 'package:work2/src/widgets/search.dart';
import 'package:work2/src/widgets/smallContanier.dart';

class BrendPage extends StatefulWidget {
  const BrendPage({super.key});

  @override
  State<BrendPage> createState() => _BrendPageState();
}

class _BrendPageState extends State<BrendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Alifshop',
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        backgroundColor: AppColor.whiteColor,
        elevation: 2,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppIcons.back))),
          ),
        ),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            SearchW(),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (ctx, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      child: SmallCont(h: 125),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
