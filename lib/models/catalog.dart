class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromJson(Map<String, dynamic> map) {
    return Item(
        id: map['id'],
        name: map['name'],
        desc: map['desc'],
        price: map['price'],
        color: map['color'],
        image: map['image']);
  }

  toMap() => {
        'id': id,
        'name': name,
        'desc': desc,
        'price': price,
        'color': color,
        'image': image
      };
}

class CatalogModels {

  static final catModel = CatalogModels._internal();

  CatalogModels._internal();

  factory CatalogModels() => catModel;


  static var items;

  Item getById(int id) => items.firstWhere((element) => element.id == id, orElse: null);

  Item getByPos(int pos) => items[pos];

}
