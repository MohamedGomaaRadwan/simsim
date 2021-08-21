import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simsim/app_main_reusable_widgets/app_main_reusable_widgets.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/app_strings.dart';
import 'package:simsim/resources/image_paths.dart';
import 'package:simsim/resources/text_styles.dart';
import 'package:simsim/utils/constants.dart';

Container buildSignupLayout(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      color: AppColors.White,
      borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(32)),
      child: Column(
        children: [
          height32,
          Text(
            AppStrings.SIGNUP_TO_YOUR_ACCOUNT,
            style: AppTextStyles.headTitlesStyles,
          ),
          height48,
          AppInputTextField(
            label: AppStrings.YOUR_EMAIL,
          ),
          height20,
          AppInputTextField(label: AppStrings.YOUR_NAME),
          height20,
          AppInputTextField(label: AppStrings.CREATE_PASSWORD),
          height20,
          ClickableText(
              text: AppStrings.BY_SIGNING_UP_YOU_CONFIRM,
              clickableText: AppStrings.PRIVACY_POLICY,
              onPress: () {},
              textStyle: AppTextStyles.semiBold16,
              clickableTextStyle: AppTextStyles.semiBoldColored16),
          height20,
          AppMainButton(buttonLabel: AppStrings.SIGNUP, onPress: () {}),
          height12,
          Text(
            AppStrings.OR,
            style: AppTextStyles.semiBold16,
          ),
          height12,
          SignUpAndLoginButtonWithLogo(
            label: AppStrings.SIGNUP_WITH_GOOGLE,
            style: AppTextStyles.blackButtonsTextStyles,
            onPress: () {},
            image: AppImages.GOOGLE_LOGO,
            buttonColor: AppColors.White,
            logoIsWhite: false,
          ),
          height20,
          SignUpAndLoginButtonWithLogo(
            label: AppStrings.SIGNUP_WITH_APPLE,
            style: AppTextStyles.whiteButtonsTextStyles,
            onPress: () {},
            image: AppImages.APPLE_LOGO,
            buttonColor: AppColors.KAppleButton,
            logoIsWhite: true,
          ),
          height32,
          ClickableText(
              text: '',
              clickableText: AppStrings.ALREADY_HAVE_AN_ACCOUNT+' '+AppStrings.LOGIN,
              onPress: (){},
              textStyle: AppTextStyles.semiBoldColored16,
              clickableTextStyle: AppTextStyles.semiBoldColored16)
        ],
      ),
    ),
  );
}
