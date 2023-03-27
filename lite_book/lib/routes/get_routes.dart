import 'package:get/get.dart';
import 'package:lite_book/data/src/constants.dart';
import 'package:lite_book/screens/add_task/add_task.dart';
import 'package:lite_book/screens/home/home.dart';
import 'package:lite_book/screens/onboarding/onboarding_second.dart';
import 'package:lite_book/screens/onboarding/onboarding_third.dart';
import 'package:lite_book/screens/registration/registration.dart';
import 'package:lite_book/screens/sign_in/sign_in.dart';

abstract class GetPages {
  static final List<GetPage> getRoutes = [
    GetPage(name: kHomePageRoID, page: () => const HomePage()),
    GetPage(name: kSignInPageRoID, page: () => const SignInPage()),
    GetPage(name: kRegistrationPageRoID, page: () => const RegistrationPage()),
    GetPage(name: kAddTaskPageRoID, page: () => const AddTaskPage()),
    GetPage(name: kOnBoardindFirstRoID, page: () => const OnBoardingThird()),
    GetPage(name: kOnBoardindSecondRoID, page: () => const OnBoardingSecond()),
    GetPage(name: kOnBoardindThirdRoID, page: () => const OnBoardingThird())
  ];
}
