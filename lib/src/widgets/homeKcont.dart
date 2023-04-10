import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:work2/app/app_color.dart';
import 'package:work2/src/widgets/contwidgets.dart';
import 'package:work2/src/widgets/smallContanier.dart';

class HomePagev extends StatelessWidget {
  const HomePagev({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    return Column(children: [
      SizedBox(
        height: 180,
        child: PageView.builder(
            controller: _controller,
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return Container(
                height: 125,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: SmallCont(
                      h: 125,
                    )),
                    const SizedBox(width: 10),
                    Expanded(
                        child: SmallCont(
                      h: 125,
                    ))
                  ],
                ),
              );
            }),
      ),
      ScreenUtil().setVerticalSpacing(15),
      Container(
          alignment: Alignment.bottomCenter,
          child: SmoothPageIndicator(
              controller: _controller,
              count: 6,
              effect: const ScrollingDotsEffect(
                  radius: 40,
                  dotWidth: 10,
                  dotHeight: 10,
                  dotColor: AppColor.whiteColor,
                  activeDotColor: AppColor.contColor)))
    ]);
  }
}
