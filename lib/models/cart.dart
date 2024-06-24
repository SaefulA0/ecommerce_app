import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Force 1'07",
      price: "236",
      imagePath: "lib/images/nike_air_force_1'07.png",
      description:
          "Score major style points with this legendary hoops classic.",
    ),
    Shoe(
      name: "Dunk Low Men's",
      price: "206",
      imagePath: "lib/images/nike_dunk_low_mens.png",
      description:
          "This '80s basketball icon returns with classic details and throwback hoops flair.",
    ),
    Shoe(
      name: "Full Force Low Men's",
      price: "256",
      imagePath: "lib/images/nike_full_force_low_mens.png",
      description:
          "A new shoe with old-school appeal—your retro dreams just came true.",
    ),
    Shoe(
      name: "Initiator Running",
      price: "226",
      imagePath: "lib/images/nike_initiator_running.png",
      description:
          "Put in miles with the comfortable support of the Nike Initiator.",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
