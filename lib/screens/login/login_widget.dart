import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simsim/app_main_reusable_widgets/app_main_reusable_widgets.dart';
import 'package:simsim/app_main_reusable_widgets/input_text_field_for_password.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/app_strings.dart';
import 'package:simsim/resources/image_paths.dart';
import 'package:simsim/resources/text_styles.dart';
import 'package:simsim/utils/constants.dart';
import 'package:simsim/utils/routes.dart';

Container buildLoginLayout(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
      color: AppColors.White,
      borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(32)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            height32,
            Text(
              AppStrings.LOGIN_TO_YOUR_ACCOUNT,
              style: AppTextStyles.headTitlesStyles,
            ),
            height48,
            AppInputTextField(
              label: AppStrings.YOUR_EMAIL,
            ),
            height20,
            AppInputPasswordField(label: AppStrings.PASSWORD),
            height20,
            AppMainButton(buttonLabel: AppStrings.LOGIN, onPress: () {}),
            height12,
            Text(
              AppStrings.OR,
              style: AppTextStyles.semiBold16,
            ),
            height12,
            SignUpAndLoginButtonWithLogo(
              label: AppStrings.CONTINUE_WITH_GOOGLE,
              style: AppTextStyles.blackButtonsTextStyles,
              onPress: () {},
              image: AppImages.GOOGLE_LOGO,
              buttonColor: AppColors.White,
              logoIsWhite: false,
            ),
            height20,
            SignUpAndLoginButtonWithLogo(
              label: AppStrings.CONTINUE_WITH_APPLE,
              style: AppTextStyles.whiteButtonsTextStyles,
              onPress: () {},
              image: AppImages.APPLE_LOGO,
              buttonColor: AppColors.KAppleButton,
              logoIsWhite: true,
            ),
            height32,
            ClickableText(
                text: '',
                clickableText:
                AppStrings.FORGOT_PASSWORD,
                onPress: () {
                  Navigator.push(
                    context,
                    MRouter.generateRoute(
                      RouteSettings(name: AppRoute.SignUp),
                    ),
                  );
                },
                textStyle: AppTextStyles.semiBoldColored16,
                clickableTextStyle: AppTextStyles.semiBoldColored16),
            height32,
            ClickableText(
                text: '',
                clickableText:
                AppStrings.DONT_HAVE_AN_ACCOUNT + ' ' + AppStrings.SIGNUP,
                onPress: () {
                  Navigator.push(
                    context,
                    MRouter.generateRoute(
                      RouteSettings(name: AppRoute.SignUp),
                    ),
                  );
                },
                textStyle: AppTextStyles.semiBoldColored16,
                clickableTextStyle: AppTextStyles.semiBoldColored16),

          ],
        ),
      ),
    ),
  );
}
