import 'package:flutter_application_1/models/catalog.dart';

class CartModel {

  // catalog field
  CatalogModel catalog;

  //getter setter in 06:49:00
  //store ids of each item
  final List<String> itemIds = [];

  //get items in cart
  List items = itemIds.map((id) => catalog.getById(id)).toList();
}
