import 'package:simsim/resources/app_strings.dart';
import 'package:simsim/resources/image_paths.dart';

class OnBoardingContent {
  late String image;
  late String title;
  late String description;
  OnBoardingContent(
      {required this.image, required this.title, required this.description});

  static List<OnBoardingContent> content = [
    OnBoardingContent(
        image: AppImages.SLIDER1,
        title: AppStrings.ALL_LOVE_BEINGS_AND_END_THERE,
        description: AppStrings.LOREM_IPSUM),
    OnBoardingContent(
        image: AppImages.SLIDER2,
        title: AppStrings.NEW_BORN_ESSENTIALS,
        description: AppStrings.LOREM_IPSUM),
  ];
}
