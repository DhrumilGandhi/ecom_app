import 'package:ecom_app/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();
  CartModel._internal();

  factory CartModel() => cartModel;

  //Catalog Fileds

  late CatalogModel _catalog;

  //Collection of Id's  of each item

  final List<int> _itemId = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemId.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemId.add(item.id);
  }

  //remove item

  void remove(Item item) {
    _itemId.remove(item.id);
  }
}
