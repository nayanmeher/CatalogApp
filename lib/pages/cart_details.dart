import 'package:bloc_test1/models/cart_item_model.dart';
import 'package:bloc_test1/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: 'Cart'.text.make(),
        ),
        body: Column(
          children: [CartItemList().p20().expand(), Divider(), ButtomBar()],
        ));
  }
}

class ButtomBar extends StatelessWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = CartItemModel();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        'INR ${cart.totalPrice}'.text.xl3.make(),
        ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('This feature is not implemented yet.')));
            },
            child: 'Buy'.text.make().centered().w20(context))
      ],
    ).p20();
  }
}

class CartItemList extends StatefulWidget {
  const CartItemList({Key? key}) : super(key: key);

  @override
  State<CartItemList> createState() => _CartItemListState();
}

class _CartItemListState extends State<CartItemList> {
  final cart = CartItemModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: cart.items.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.check),
          title: cart.items[index].name.text.make(),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: () {
              cart.remove(cart.items[index]);
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
