 import 'package:flutter/material.dart';
import 'package:badges/badges.dart'
    as badges; // Import the badges package with an alias
import 'package:flutter_application_1/AddtoCard.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/Function/AddtoCartlogic.dart';
import 'package:flutter_application_1/check.dart';

 
 
 Widget badge(BuildContext context) {
  
    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>   Check(item: Cart.incart))
            );
          },
          icon: const Icon(Icons.shopping_cart),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: badges.Badge(
            badgeColor: AppColors
                .orangeColor, // Use the alias to specify the Badge class
            badgeContent: Text(
          Cart.incart.length.toString(),
                   // Replace with the actual number of items in the cart
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

