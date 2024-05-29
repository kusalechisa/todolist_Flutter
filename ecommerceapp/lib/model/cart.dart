import 'package:ecommerceapp/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom FREAK",
        price: "236",
        imagePath: "lib/image/shoes1.jpg",
        description:
            "The Forward-thinking design of his latest signature shoe. "),
    Shoe(
        name: "Air Jordan",
        price: "240",
        imagePath: "lib/image/shoes2.jpg",
        description:
            "The Forward-thinking design of his latest signature shoe. "),
    Shoe(
        name: "TD Treys",
        price: "220",
        imagePath: "lib/image/shoes3.jpg",
        description:
            "The Forward-thinking design of his latest signature shoe. "),
    Shoe(
        name: "Sneakers",
        price: "200",
        imagePath: "lib/image/shoes4.jpg",
        description:
            "The Forward-thinking design of his latest signature shoe. "),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
