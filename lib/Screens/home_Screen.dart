import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/offers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key); // Fix the constructor

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  

  @override
  Widget build(BuildContext context) {
    

    

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 260,
                color: AppColors.blueColor,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 28, horizontal: 20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hey, Halal",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.shopping_cart,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              hintStyle: TextStyle(color: Color(0xff8891A5)),
                              hintText: "Search Product or store",
                              prefixIcon:const  Icon(
                                Icons.search_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                              filled: true,
                              fillColor: AppColors.darkblueColor),
                        )),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 28, horizontal: 20),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "DELIVERYTO",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "WITHIN",
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Green Way 3000, Sylhet",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              ),
                              Text(
                                "1 Hour",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 2, top: 10),
                child: Offers(),
              ),
              Container(
                padding:const  EdgeInsets.only(top: 10, right: 100),
                child:const  Text("Recommended", style: TextStyle(fontSize: 30)),
              ),
              Container(
                padding: EdgeInsets.only(left: 2, top: 10),
                child: Cart(),
              ),
            ],
          ),
        ),
      ),
   // bottomNavigationBar: BottomNavigationExample(),
    );
  }  
  }

