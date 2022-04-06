import 'package:bloc_test1/models/cart_item_model.dart';
import 'package:bloc_test1/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';



class AddToCartButton extends StatefulWidget {
  final Item item;
  const AddToCartButton({Key? key, required this.item}) : super(key: key);

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {


  final _cart = CartItemModel();
  @override
  Widget build(BuildContext context) {
    bool isAdded = _cart.items.contains(widget.item) ?? false;
    return ElevatedButton(
      onPressed: () {
        if(!isAdded){
          isAdded = isAdded.toggle();
          final _catalog = CatalogModels();
          _cart.catalogModels= _catalog;
          _cart.add(widget.item);
          setState(() {
          });
        }
      },
      child:isAdded?Icon(Icons.check): Icon(CupertinoIcons.cart_badge_plus),
      style: ButtonStyle(
          shape: MaterialStateProperty.all(StadiumBorder()),
          backgroundColor:
          MaterialStateProperty.all(MyThemeData.black)),
    );
  }
}