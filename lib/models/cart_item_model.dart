import 'package:bloc_test1/models/catalog.dart';

class CartItemModel {
  //making singleton for this model
  CartItemModel._internal();

  static final cartItemModel = CartItemModel._internal();

  factory CartItemModel() => cartItemModel;

  late CatalogModels _catalogModels;

  List<int> itemIds = [];

  CatalogModels get catalogModels => _catalogModels;

  set catalogModels(CatalogModels value) {
    _catalogModels = value;
  }

  List<Item> get items =>
      itemIds.map((e) => _catalogModels.getById(e)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    itemIds.add(item.id);
  }

  void remove(Item item) {
    itemIds.remove(item.id);
  }
}
