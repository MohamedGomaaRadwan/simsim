import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/image_paths.dart';

class SignupAndLoginLayout extends StatelessWidget {
  late Widget widget;
  SignupAndLoginLayout({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: AppColors.Blue,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12)),
                child: Image(
                  image: AssetImage(AppImages.ITEMS),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(74),
                left: ScreenUtil().setWidth(121)),
            child: SvgPicture.asset(AppImages.APP_NAME),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: widget,
            ),
          ),
        ],
      ),
    );
  }
}
