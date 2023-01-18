import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._interal();

  CartModel._interal();

  factory CartModel() => cartModel;

  //catalog field
  late CatalogModel _catalog;

  //Collection od IDs - store Ids of each item
  final List<int> _itemIds = [];

  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get item in the cart
  List<Item> get item => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice => item.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
