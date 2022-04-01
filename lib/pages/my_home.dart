import 'package:bloc_test1/models/catalog.dart';
import 'package:bloc_test1/widgets/item_widget.dart';
import 'package:bloc_test1/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final dummyList = List.generate(20, (index) => CatalogModels.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget( item: dummyList[index]);
          }),
      drawer: MyDrawer(),
    );
  }
}
