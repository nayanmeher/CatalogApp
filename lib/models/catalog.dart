class Item {
  int id;
  String name;
  String desc;
  num price;
  String color;
  String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}

class CatalogModels{
 static final items = [
    Item(
        1,
        "Iphone 13 pro max",
        "Latest Smart phone by Apple",
        120000,
        "#8bf0dc",
        "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-family-hero?wid=940&hei=1112&fmt=png-alpha&.v=1644969385433"),
  ];
}


