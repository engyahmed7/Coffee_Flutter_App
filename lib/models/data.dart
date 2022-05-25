import 'package:flutter/cupertino.dart';

class Data {
  String Image;
  String name;
  String price;

  Data(this.Image, this.name, this.price);
}

List<Data> coffeedata = [
  Data("assets/images/Espresso.svg", "Espresso", "200"),
  Data("assets/images/Cappuccino.svg", "Cappuccino", "200"),
  Data("assets/images/macciato.svg", "Macchiato", "200"),
  Data("assets/images/Mocha.svg", "Mocha", "200"),
  Data("assets/images/latte.svg", "Latte", "200"),
];