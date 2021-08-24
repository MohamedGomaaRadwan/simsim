import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/utils/app_size_box.dart';

class SignUpAndLoginButtonWithLogo extends StatelessWidget {
  late VoidCallback onPress;
  late String image;
  late String label;
  late TextStyle style;
  late Color buttonColor;
  late bool logoIsWhite;
  SignUpAndLoginButtonWithLogo(
      {Key? key,
        required this.label,
        required this.image,
        required this.onPress,
        required this.buttonColor,
        required this.style,
        required this.logoIsWhite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(50),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.KTextColor),
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                color: logoIsWhite == true ? AppColors.White : null,
              ),
              12.widthBox,
              Text(
                label,
                style: style,
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
