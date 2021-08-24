import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simsim/app_main_reusable_widgets/app_main_button.dart';
import 'package:simsim/resources/app_colors.dart';
import 'package:simsim/resources/image_paths.dart';
import 'package:simsim/resources/text_styles.dart';
import 'package:simsim/screens/on_boarding_screen/on_boarding_content.dart';
import 'package:simsim/utils/app_size_box.dart';
import 'package:simsim/utils/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<OnBoardingContent> content = [
      OnBoardingContent(
          image: AppImages.SLIDER1,
          title: AppLocalizations.of(context)!.allLoveBeingsAndEndsThere,
          description: AppLocalizations.of(context)!.loremIpsum),
      OnBoardingContent(
          image: AppImages.SLIDER2,
          title: AppLocalizations.of(context)!.newBornEssentials,
          description: AppLocalizations.of(context)!.loremIpsum),
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount:content.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              content[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(36),
                        ),
                        child: buildPageContent(index, context,content),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Column buildPageContent(int index, BuildContext context,List<OnBoardingContent> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        97.heightBox,
        Container(
          child: buildDots(content),
        ),
        48.heightBox,
        Text(
          content[index].title,
          style: AppTextStyles.semiBold34,
        ),
        48.heightBox,
        Text(
          content[index].description,
        ),
        buildButton(context),
      ],
    );
  }

  Expanded buildButton(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(46)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppMainButton(
                buttonLabel:AppLocalizations.of(context)!.getStarted,
                onPress: () {
                  if (_pageController.hasClients) {
                    if (currentPage == 1) {
                      Navigator.pushNamed(context, AppRoute.SignUp);
                    }
                    _pageController.animateToPage(
                      currentPage + 1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildDots(List<OnBoardingContent> content) {
    return Row(
      children: List.generate(
        content.length,
        (index) => Container(
          margin: EdgeInsets.only(right: 5),
          height: ScreenUtil().setHeight(15),
          width: ScreenUtil().setHeight(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: currentPage == index
                  ? AppColors.DarkGray
                  : AppColors.LightGray),
        ),
      ),
    );
  }
}
