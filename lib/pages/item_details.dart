import 'package:bloc_test1/models/catalog.dart';
import 'package:bloc_test1/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  const ItemDetails({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
          children: [
           Container(
             padding: EdgeInsets.all(15),
             width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height/2,
             child: Hero( tag: Key(item.id.toString()),child: Image.network(item.image)),
           ),
            Expanded(child: Container(
              child: Column(
                children: [
                  item.name.text.xl4.make(),
                  item.desc.text.xl.make(),
                ],
              ),
            ))
      ]),
    ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            'INR ${item.price.toString()}'.text.color(Colors.red).bold.xl.make(),
            ElevatedButton(
              onPressed: () {},
              child: Text('Buy'),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(StadiumBorder()),
                  backgroundColor:
                  MaterialStateProperty.all(MyThemeData.black)),
            ).wh(100, 40),
          ],
        ),
      ),
    );
  }
}
