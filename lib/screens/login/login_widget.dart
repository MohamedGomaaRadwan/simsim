import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simsim/app_main_reusable_widgets/app_main_button.dart';
import 'package:simsim/app_main_reusable_widgets/clickable_text.dart';
import 'package:simsim/app_main_reusable_widgets/input_text_field.dart';
import 'package:simsim/app_main_reusable_widgets/input_text_field_for_password.dart';
import 'package:simsim/app_main_reusable_widgets/signup_and_login_with_logo.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/image_paths.dart';
import 'package:simsim/resources/text_styles.dart';
import 'package:simsim/utils/app_size_box.dart';
import 'package:simsim/utils/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            32.heightBox,
            Text(
              AppLocalizations.of(context)!.allLoveBeingsAndEndThere,
              style: AppTextStyles.headTitlesStyles,
            ),
            48.heightBox,
            AppInputTextField(
              label: AppLocalizations.of(context)!.yourEmail,
            ),
            20.heightBox,
            AppInputPasswordField(label: AppLocalizations.of(context)!.password),
20.heightBox,
            AppMainButton(buttonLabel: AppLocalizations.of(context)!.login, onPress: () {}),
            12.heightBox,
            Text(
              AppLocalizations.of(context)!.or,
              style: AppTextStyles.semiBold16,
            ),
            12.heightBox,
            SignUpAndLoginButtonWithLogo(
              label: AppLocalizations.of(context)!.continueWithGoogle,
              style: AppTextStyles.blackButtonsTextStyles,
              onPress: () {},
              image: AppImages.GOOGLE_LOGO,
              buttonColor: AppColors.White,
              logoIsWhite: false,
            ),
            20.heightBox,
            SignUpAndLoginButtonWithLogo(
              label: AppLocalizations.of(context)!.continueWithApple,
              style: AppTextStyles.whiteButtonsTextStyles,
              onPress: () {},
              image: AppImages.APPLE_LOGO,
              buttonColor: AppColors.KAppleButton,
              logoIsWhite: true,
            ),
            32.heightBox,
            ClickableText(
                text: '',
                clickableText:
                AppLocalizations.of(context)!.forgotPassword,
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
            32.heightBox,
            ClickableText(
                text: '',
                clickableText:
                AppLocalizations.of(context)!.doNotHaveAnAccount + ' ' + AppLocalizations.of(context)!.signUp,
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
