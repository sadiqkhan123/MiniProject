
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Cartdata.dart';
import 'package:flutter_application_1/Widgets/color.dart';


class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25),
                   color: Colors.white
            ),
            child: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.orangeColor,
              ),
              controller: tabController,
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
              tabs:const [
                Tab(child: Text("popular"),),
                Tab(child: Text("Low price"),),
                Tab(child: Text("Smaill burger"),),
                Tab(child: Text("Big Burger"),)
              ]
            ),
          ),
          Expanded(
            child: TabBarView
            (controller: tabController,
            children: [
              Popular(),
              LowPrices(),
              SmallItem(),
              BigItem()
            
            ],))
        ],
      ),
    );
  }
}


































// // class ListScreen extends StatefulWidget {
// //   const ListScreen({super.key});

// //   @override
// //   State<ListScreen> createState() => _ListScreenState();
// // }

// // class _ListScreenState extends State<ListScreen> {
// //   List categories = ["Popular", "Low Price", "Small Burger", "Big Burger"];
// //   int selectedIndex = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: EdgeInsets.symmetric(vertical: 20,),
// //       child: SizedBox(
// //         height: 15,
// //         child: ListView.builder(
// //             scrollDirection: Axis.horizontal,
// //             itemCount: categories.length,
// //             itemBuilder: (context, index) => buildCategory(index)),
// //       ),
// //     );
// //   }

//   Widget buildCategory(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedindex = index;
//         });
//       },
//       child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 width: 100,
//                 height: 45,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(25),
//                    color:
//                         selectedindex == index ? AppColors.orangeColor : Colors.transparent,
//                         border: Border.all(
//                           width: 2,
//                           color: AppColors.greyColor
//                         )
//                         ),
                
//                 child: Center(
//                   child: Text(
//                     categories[index],
//                     style: TextStyle(
//                         fontWeight: FontWeight.w500,
//                         color:
//                      selectedindex == index ? Colors.white : Colors.black87
                              
//                     )
//                   ),
//                 ),
//               )
//             ],
//           )),
//     );
//   }
// }
