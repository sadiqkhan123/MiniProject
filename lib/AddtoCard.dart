import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Favourite_Screen.dart';
import 'package:flutter_application_1/Widgets/color.dart';


class AddCart extends StatefulWidget {
  const AddCart({super.key});

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          color:AppColors.orangeColor,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.5,
          child: Column(
            children: [
             
              Row(
                children: [
                       Stack(
                        alignment: Alignment.center,
                         children:[ 
                          Container(
                          child: Text("#",style:
                         TextStyle(color: AppColors.darkorangeColor,fontWeight: FontWeight.w400,
                         fontSize: 190),
                         ),
                         ),
                         Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("Shopping Cart 5",style: TextStyle(fontSize: 15),),
                         ),
                         Container(
                          margin: EdgeInsets.only(bottom:170,right: 60),
                          child: FloatingActionButton(onPressed: (){Navigator.pop(context,FavouriteScreen());},
                          mini: true,
                          backgroundColor: Colors.white,child: const Icon(Icons.arrow_back,color: Colors.black,))),
                         ]
                       ),
                    
                  Padding(
                    padding: const EdgeInsets.only(top: 70,right: 26),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                    
                      children: [
                      
                         Container(
                          padding:const EdgeInsets.only(right: 30,),
                          child: Text("OFF!!",style:
                         TextStyle(color: Colors.white,fontWeight: FontWeight.w800),
                         ),
                         ),
                      
                       
                          Container(child: Text("25%",style: TextStyle(fontSize: 110,fontWeight: FontWeight.w800,
                         color: Colors.white), )),
                      
                    ]),
                  ),
             
                ],
              ),
              Container(width:double.infinity,
              height: 71,
              color: AppColors.darkorangeColor,
              child: Center(child: Text("Use code # HaLaLFood at Checkout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
              )
            ],
          ),
          )),
          
    );
  }
}

