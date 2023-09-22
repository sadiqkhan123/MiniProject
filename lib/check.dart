import 'package:flutter/material.dart';
import 'package:flutter_application_1/AddtoCard.dart';
import 'package:flutter_application_1/Function/AddtoCartlogic.dart';
import 'package:flutter_application_1/Seemorevalue.dart';
import 'package:flutter_application_1/Widgets/color.dart';
import 'package:flutter_application_1/Widgets/custom_Button.dart';

class Check extends StatefulWidget {
  final List item;
  const Check({Key? key, required this.item});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  int numItemsToShow = 3; // Number of items to initially show

  @override
  Widget build(BuildContext context) {
    num totalPrice = 0;
    for (final item in widget.item) {
      totalPrice += item["Price"] * item["Quantity"];
    }
    num deliveryCharge = 2.00;
    num subtotal = totalPrice + deliveryCharge;
    int tot = 0;
    return Scaffold(
      body: widget.item.isEmpty
          ? const Center(
              child: Text("Card is Empty", style: TextStyle(fontSize: 30)))
          : Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemCount: numItemsToShow <= widget.item.length
                        ? numItemsToShow
                        : widget.item.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(); // Add a Divider between items
                    },
                    itemBuilder: (context, index) {
                      final item = widget.item[index];
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(item["Image"]),
                        ),
                        title: Text("${item["Name"]}"),
                        subtitle: Text("${item["Price"]}"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  AddTocart.addtoCart(item["Image"],
                                      item["Name"], item["Price"]);
                                });
                              },
                              child: CircleAvatar(
                                radius: 18,
                                child: Text("+"),
                                backgroundColor:
                                    AppColors.greyColor.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(width: 4),
                            Text("${item["Quantity"]}"),
                            SizedBox(width: 4),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (item["Quantity"] > 0) {
                                    AddTocart.removeFromCart(item["Name"]);
                                  }
                                });
                              },
                              child: CircleAvatar(
                                radius: 18,
                                child: Text("-"),
                                backgroundColor:
                                    AppColors.greyColor.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // "See More" button
                if (numItemsToShow < widget.item.length)
                  TextButton(
                    onPressed: () {
                      setState(() {
                        numItemsToShow += 3;
                      });
                    },
                    child: Text("More"),
                  ),

                Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Container(
                    width: 320,
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.greyColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Subtotal:",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                              ),
                              Text(
                                "\$${totalPrice.toStringAsFixed(2)}",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Delivery",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                              ),
                              Text(
                                "\$${deliveryCharge.toStringAsFixed(2)}",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Total:",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black54),
                              ),
                              Text(
                                "\$${subtotal.toStringAsFixed(2)}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          CustomButton(
                            backgroundColor: AppColors.blueColor,
                            text: "Proceed to checkout",
                            textColor: Colors.white,
                            height: 50,
                            width: double.infinity,
                            onpressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
