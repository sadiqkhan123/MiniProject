class AddTocart {
  static void addtoCart(String image, String name, num? price) {
    bool alreadyInCart = false;
    Map toAdd = {};
    num number = 0;

    if (Cart.incart.isNotEmpty) {
      for (int i = 0; i < Cart.incart.length; i++) {
        if (Cart.incart[i]['Name'] == name) {
          alreadyInCart = true;
        }
      }
    }
    if (alreadyInCart) {
      for (int i = 0; i < Cart.incart.length; i++) {
        if (Cart.incart[i]['Name'] == name) {
          Cart.incart[i]['Quantity'] = Cart.incart[i]['Quantity'] + 1;
          number = Cart.incart[i]['Price'] + Cart.incart[i]['OriginalPrice'];
          Cart.incart[i]['Price'] = number;
        }
      }
    } else {
      toAdd['Name'] = name;
      toAdd['Quantity'] = 1;
      toAdd['Price'] = price;
      toAdd['Image'] = image;
      toAdd['OriginalPrice'] = price;
      Cart.incart.add(toAdd);
    }
  }

  static void removeFromCart(String name) {
    for (int i = 0; i < Cart.incart.length; i++) {
      if (Cart.incart[i]['Name'] == name) {
        if (Cart.incart[i]['Quantity'] > 1) {
          Cart.incart[i]['Quantity'] = Cart.incart[i]['Quantity'] - 1;
          Cart.incart[i]['Price'] =
              Cart.incart[i]['Price'] - Cart.incart[i]['OriginalPrice'];
        } else {
          Cart.incart.removeAt(i);
        }
        break; // Stop iterating once the item is found and updated or removed
      }
    }
  }

  
  }


class Cart {
  static List incart = [];
}
