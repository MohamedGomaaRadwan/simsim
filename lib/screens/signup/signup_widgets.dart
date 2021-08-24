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
import 'package:simsim/utils/constants.dart';
import 'package:simsim/utils/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            height32,
            Text(
              AppLocalizations.of(context)!.signUpToYourAccount,
              style: AppTextStyles.headTitlesStyles,
            ),
            height48,
            AppInputTextField(
              label: AppLocalizations.of(context)!.yourEmail,
            ),
            height20,
            AppInputTextField(label: AppLocalizations.of(context)!.yourEmail),
            height20,
            AppInputPasswordField(label: AppLocalizations.of(context)!.createPassword),
            height20,
            ClickableText(
                text: AppLocalizations.of(context)!.bySigningUpYouConfirm,
                clickableText: AppLocalizations.of(context)!.privacyPolicy,
                onPress: () {},
                textStyle: AppTextStyles.semiBold16,
                clickableTextStyle: AppTextStyles.semiBoldColored16),
            height20,
            AppMainButton(buttonLabel: AppLocalizations.of(context)!.signUp, onPress: () {}),
            height12,
            Text(
              AppLocalizations.of(context)!.or,
              style: AppTextStyles.semiBold16,
            ),
            height12,
            SignUpAndLoginButtonWithLogo(
              label: AppLocalizations.of(context)!.signUpWithGoogle,
              style: AppTextStyles.blackButtonsTextStyles,
              onPress: () {},
              image: AppImages.GOOGLE_LOGO,
              buttonColor: AppColors.White,
              logoIsWhite: false,
            ),
            height20,
            SignUpAndLoginButtonWithLogo(
              label: AppLocalizations.of(context)!.signUpWithApple,
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
                AppLocalizations.of(context)!.alreadyHaveAnAccount + ' ' + AppLocalizations.of(context)!.login,
                onPress: () {
                  Navigator.push(context,
                      MRouter.generateRoute(RouteSettings(name: AppRoute.Login),),);
                },
                textStyle: AppTextStyles.semiBoldColored16,
                clickableTextStyle: AppTextStyles.semiBoldColored16)
          ],
        ),
      ),
    ),
  );
}
