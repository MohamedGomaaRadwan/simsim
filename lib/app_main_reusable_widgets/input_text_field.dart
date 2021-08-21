import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simsim/resources/app_colors.dart';

class AppInputTextField extends StatelessWidget {
  late String label;
  AppInputTextField({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setHeight(50),
      child: TextField(
        decoration: new InputDecoration(
            contentPadding: EdgeInsets.only(left: 15),
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            hintText: label,
            hintStyle: new TextStyle(color: AppColors.KTextColor),
            helperStyle: TextStyle(fontSize: 16),
            fillColor: AppColors.KInputTextFieldColor),
      ),
    );
  }
}
