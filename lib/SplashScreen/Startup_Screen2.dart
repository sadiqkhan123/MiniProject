import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/bottom_Navbar.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/home_view.dart';

class StartupScreen2 extends StatefulWidget {
  const StartupScreen2({super.key});

  @override
  State<StartupScreen2> createState() => _StartupScreen2State();
}

class _StartupScreen2State extends State<StartupScreen2> {
  @override
  Widget build(BuildContext context) {
    return StartUpScreen(
      heading: "Your Holiday \nshopping \ndelivered to Screen \ntwo",
      paragraph:
          "There's Something for everyone \n to enjoy with Sweet Shop\nFavorites Screen 2 ",
      image: "assets/images/pizza.jpg",
      function: row2(),
      onpressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => BottomNavigationExample()));
      },
    );
  }
}

Widget row2() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
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
      const SizedBox(
        width: 10,
      ),
      Container(
        decoration: BoxDecoration(
          color: AppColors.greyColor,
          borderRadius: BorderRadius.circular(4),
        ),
        width: 34,
        height: 5,
      ),
    ],
  );
}
