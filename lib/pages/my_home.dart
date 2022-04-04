import 'dart:convert';

import 'package:bloc_test1/models/catalog.dart';
import 'package:bloc_test1/widgets/item_widget.dart';
import 'package:bloc_test1/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJsonStr =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedCatalog = jsonDecode(catalogJsonStr);
    var itemData = decodedCatalog['products'];
    CatalogModels.items =
        List.from(itemData).map<Item>((val) => Item.fromJson(val)).toList();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body:(CatalogModels.items != null ) ? ListView.builder(
          itemCount: CatalogModels.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModels.items[index]);
          }): Center(
        child: CircularProgressIndicator(),
      ),
      drawer: MyDrawer(),
    );
  }
}
