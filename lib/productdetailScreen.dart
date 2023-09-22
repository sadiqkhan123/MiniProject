


import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Favourite_Screen.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/Widgets/custom_Button.dart';
import 'package:flutter_application_1/Function/AddtoCartlogic.dart';

class ProductDetailScreen extends StatelessWidget {
  final String image;
  final String product;
  final int price;

  ProductDetailScreen(this.image, this.product, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                child: Container(child: Row
                ( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.white,
                        onPressed: () {
                          Navigator.pop(context, FavouriteScreen());
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                      Text( product),
                       IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart))
                ]),),
              ),
              Container(
                width:MediaQuery.of(context).size.width*1,
                child: Image.asset(
                  image,
                  width: 200, // Customize the image size
                  height: 200, // Customize the image size
                ),
              ),
             // SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container
                (
                  width:MediaQuery.of(context).size.width*0.9,
                 
                decoration: BoxDecoration
                (borderRadius: BorderRadius.circular(15),
                color:AppColors.greyColor.withOpacity(0.4)
                ),
                  child: 
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                    Text("Thin Choice Top",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                    Text(product,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                    SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$${price.toStringAsFixed(2)}', style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),       
                            Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AppColors.blueColor,
                                borderRadius: BorderRadius.circular(15)
                              ),
                             child: Center(child: Text('\$${(price - 2).toStringAsFixed(2)}OFF',style: TextStyle(color: Colors.white),)),
                            ),
                            Text("Reg \$56 USD"),
                      ],
                    ),
                  ),
                 // SizedBox(height: 10,)
                  Container(
                    child: ListTile(title:Text("Details"),
                    subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s "
                    ,style: TextStyle(color: Colors.black54))
                    )
                  ),
                  SizedBox(height: 8),
                  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Text("Reviews"),
    ),
    SizedBox(height: 10,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButton(text: "Add to Cart",textColor: AppColors.blueColor, onpressed: (){}, backgroundColor: Colors.white,width: 130,height: 50,),
        CustomButton(text: "Buy Now",textColor: Colors.white, onpressed: (){}, backgroundColor: AppColors.blueColor,width: 130,height: 50,)
      ],
    )
    
  ],
)

                  
                  ]),
                ),),
              ),
               
            ],
          ),
        ),
      ),
    );
  }
}



