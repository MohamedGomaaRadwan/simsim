import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildDot extends StatelessWidget {
  final Color color;
  const BuildDot({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: ScreenUtil().setHeight(9),
      width: ScreenUtil().setHeight(9),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)), color: color),
    );
  }
}
