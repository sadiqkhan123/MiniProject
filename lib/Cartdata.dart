import 'package:flutter/material.dart';
import 'package:flutter_application_1/Function/AddtoCartlogic.dart';
import 'package:flutter_application_1/productdetailScreen.dart';
import 'package:flutter_application_1/Screens/Favourite_Screen.dart';
import 'package:flutter_application_1/badge.dart';

class Product {
  final String image;
  final String product;
  final int price;

  Product(
    this.image,
    this.product,
    this.price,
  );
}

class ProductGrid extends StatefulWidget {
  final List<Product> products;

  ProductGrid(this.products);

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12),
      itemCount: widget.products.length,
      itemBuilder: (context, index) {
        final product = widget.products[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                  product.image,
                  product.product,
                  product.price,
                ),
              ),
            );
          },
          child: Card(
            margin: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.only(bottom: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    product.image,
                    width: 80, // Customize the image size
                    height: 80, // Customize the image size
                  ),
                  Text(product.product),
                  Text('\$${product.price.toString()}'),
                  InkWell(
                    onTap: () {
                      setState(() {
                        AddTocart.addtoCart(
                            product.image, product.product, product.price);
                        
                      });
                    },
                    child: const CircleAvatar(maxRadius: 15, child: Text("+")),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Popular extends StatelessWidget {
  final List<Product> popular = [
    Product("assets/images/pizza.jpg", "Pizza", 15),
    Product("assets/images/ZingerBurger.jpg", "CheeseBurger", 10),
    Product("assets/images/crispyroll.jpg", "Zinger Cheese Roll", 10),
    Product("assets/images/chickenroll.jpg", "CrispyRoll", 8),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductGrid(popular), // Use the ProductGrid widget
    );
  }
}

class LowPrices extends StatelessWidget {
  final List<Product> LowPrice = [
    Product("assets/images/BeefBurger.jpg", "BeefBurger", 8),
    Product("assets/images/ZingerBurger.jpg", "ZingerBurger", 10),
    Product("assets/images/beefroll - Copy.jpg", "BeefRoll", 7),
    Product("assets/images/chickenroll.jpg", "ChickenRoll", 9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductGrid(LowPrice),
    );
  }
}

class BigItem extends StatelessWidget {
  final List<Product> bigitem = [
    Product("assets/images/CheeseZingerBurger.jpg", "cheeseBurger", 11),
    Product("assets/images/BeefBurger.jpg", "beefBurger", 12),
    Product("assets/images/pizza.jpg", "Pizza", 15),
    Product("assets/images/ZingerBurger.jpg", "ZingerBurger", 13),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductGrid(bigitem),
    );
  }
}

class SmallItem extends StatelessWidget {
  final List<Product> smallitem = [
    Product("assets/images/beefroll - Copy.jpg", "Beefroll", 8),
    Product("assets/images/crispyroll.jpg", "CrispyRoll", 9),
    Product("assets/images/chickenroll.jpg", "chickenroll", 8),
    Product("assets/images/BeefBurger.jpg", "BeefBurger", 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductGrid(smallitem),
    );
  }
}
