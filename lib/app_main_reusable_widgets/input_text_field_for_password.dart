import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simsim/resources/app_colors.dart';

class AppInputPasswordField extends StatefulWidget {
  late final String label;

  AppInputPasswordField({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  _AppInputPasswordFieldState createState() => _AppInputPasswordFieldState();
}

class _AppInputPasswordFieldState extends State<AppInputPasswordField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setHeight(50),
      child: TextField(
        obscureText: _isObscure,
        decoration: new InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(_isObscure
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
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
            hintText: widget.label,
            hintStyle: new TextStyle(color: AppColors.KTextColor),
            helperStyle: TextStyle(fontSize: 16),
            fillColor: AppColors.KInputTextFieldColor),
      ),
    );
  }
}
