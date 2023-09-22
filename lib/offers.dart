import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/color.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal:8 ),
        child: Row(
          children: [
           
            Padding(

              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 250,
                height: 130,
                decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Image.asset(
                              "assets/images/ZingerBurger.jpg",
                              height: 80,
                            )),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get",
                              style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w200),
                            ),
                            Text(
                              "50% OFf",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 25),
                            ),
                            Text(
                              "on first 3 order",
                              style: TextStyle(color: Colors.white,
                              fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            Padding(

              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 250,
                height: 130,
                decoration: BoxDecoration(
                    color: AppColors.darkgreyColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Image.asset(
                              "assets/images/ZingerBurger.jpg",
                              height: 80,
                            )),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get",
                              style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w200),
                            ),
                            Text(
                              "50% OFf",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 25),
                            ),
                            Text(
                              "on first 3 order",
                              style: TextStyle(color: Colors.white,
                              fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
           Padding(

              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 250,
                height: 130,
                decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Image.asset(
                              "assets/images/ZingerBurger.jpg",
                              height: 80,
                            )),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get",
                              style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w200),
                            ),
                            Text(
                              "50% OFf",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 25),
                            ),
                            Text(
                              "on first 3 order",
                              style: TextStyle(color: Colors.white,
                              fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          Padding(

              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 250,
                height: 130,
                decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Image.asset(
                              "assets/images/ZingerBurger.jpg",
                              height: 80,
                            )),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get",
                              style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w200),
                            ),
                            Text(
                              "50% OFf",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 25),
                            ),
                            Text(
                              "on first 3 order",
                              style: TextStyle(color: Colors.white,
                              fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
