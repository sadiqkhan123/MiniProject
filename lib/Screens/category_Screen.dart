
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/cart.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
           color: AppColors.blueColor,
           height: 230,
           width: double.infinity,
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
           
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:const EdgeInsets.only(top: 20,left: 18) ,
                     child: const Text("Hey,Halal",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300,
                     color: Colors.white),
                     ),
                    ),
                    Container(
                      padding:const EdgeInsets.only(right: 20,top: 10),
                      child:const  Icon(Icons.search_outlined,color: Colors.white,size: 20,),
                    )
                  ],
                ),
                Container(
                   padding:const EdgeInsets.only(top:10,left: 18) ,
                 child: Text("Shop",style: TextStyle(fontSize: 60,fontWeight: FontWeight.w300,
                 color: Colors.white),
                 ),
                ),
                Container(
                   padding:EdgeInsets.only(top:10,left: 18) ,
                 child: Text("By Category",style: TextStyle(fontSize: 50,fontWeight: FontWeight.w600,
                 color: Colors.white),
                 ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15,top:25),
            child: Cart()
          ),
           Container(
            padding: EdgeInsets.only(left: 15,top:25),
            child: Cart()
          ),
          Container(
           
          )
          
        ],
      ),

     ),),
    // bottomNavigationBar: BottomNavigationExample(),
    );
  }
}
