import 'package:bloc_test1/models/cart_item_model.dart';
import 'package:bloc_test1/models/catalog.dart';
import 'package:bloc_test1/pages/item_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';
import 'add_to_cart.dart';

class CatalogItem extends StatelessWidget {
  final Item item;
  const CatalogItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(tag: Key(item.id.toString()),child: Image.network(item.image).box.make().p16().w40(context)),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            item.name.text.lg.bold.make(),
            item.desc.text.caption(context).make(),
            10.heightBox,
            ButtonBar(
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('INR ${item.price.toString()}'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                  child: AddToCartButton( item: item,)
                )
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).make().py12();
  }
}




class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var item = CatalogModels.items[index];
        return InkWell(
          child: CatalogItem(item: item),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemDetails(item: item)));
          },
        );
      },
      itemCount: CatalogModels.items.length,
      physics: BouncingScrollPhysics(),
    );
  }
}
