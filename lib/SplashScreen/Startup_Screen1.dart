import 'package:flutter/material.dart';
import 'package:flutter_application_1/SplashScreen/Startup_Screen2.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/home_view.dart';

class StartupScreen1 extends StatefulWidget {
  const StartupScreen1({super.key});

  @override
  State<StartupScreen1> createState() => _StartupScreen1State();
}

class _StartupScreen1State extends State<StartupScreen1> {
  @override
  Widget build(BuildContext context) {
    return StartUpScreen(
      heading: "Your Holiday \nshopping \ndelivered to Screen \none",
      paragraph:
          "There's Something for everyone \nto enjoy with Sweet Shop\nFavorites Screen 1 ",
      function: row1(),
      image: "assets/images/pics.jpg",
      onpressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const StartupScreen2()));
      },
    );
  }
}

Widget row1() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
          color: AppColors.greyColor.withOpacity(1),
          borderRadius: BorderRadius.circular(4),
        ),
        width: 34,
        height: 5,
      ),
      const SizedBox(
        width: 10,
      ),
      Opacity(
        opacity: 0.23,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.greyColor,
            borderRadius: BorderRadius.circular(4),
          ),
          width: 24,
          height: 5,
        ),
      ),
    ],
  );
}
