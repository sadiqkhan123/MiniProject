
import 'package:flutter/material.dart';
import 'package:badges/badges.dart'
    as badges; // Import the badges package with an alias
import 'package:flutter_application_1/AddtoCard.dart';
import 'package:flutter_application_1/List.dart';
import 'package:flutter_application_1/Screens/category_Screen.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/Function/AddtoCartlogic.dart';
import 'package:flutter_application_1/badge.dart';
import 'package:flutter_application_1/check.dart';

class FavouriteScreen extends StatefulWidget {
  
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.pop(context, CategoryView());
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "BIG & SMALL BURGER",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  
                  badge(context)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: CategoryList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
