import 'package:bloc_test1/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      child: Card(
        child: ListTile(
          onTap: (){
            print('${item.name} clicked.');
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            'INR ${item.price}',
            textScaleFactor: 1.2,
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
