import 'dart:convert';

import 'package:bloc_test1/models/catalog.dart';
import 'package:bloc_test1/utils/myRoutes.dart';
import 'package:bloc_test1/widgets/homw_widget/catalog_header.dart';
import 'package:bloc_test1/widgets/homw_widget/catalog_list.dart';
import 'package:bloc_test1/widgets/item_widget.dart';
import 'package:bloc_test1/widgets/my_drawer.dart';
import 'package:bloc_test1/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

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
    Future.delayed(Duration(seconds: 2));
    final catalogJsonStr =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedCatalog = jsonDecode(catalogJsonStr);
    var itemData = decodedCatalog['products'];
    CatalogModels.items =
        List.from(itemData).map<Item>((val) => Item.fromJson(val)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        child: Icon(CupertinoIcons.shopping_cart),
        backgroundColor: MyThemeData.black,
      ),
      backgroundColor: MyThemeData.grey,
      body: SafeArea(
        child: Container(
          padding: Vx.m20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModels.items != null && CatalogModels.items.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().expand(),

            ],
          ),
        ),
      ),
    );
  }
}



// grid view body:
/*
* return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: (CatalogModels.items != null)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index) {
                final item = CatalogModels.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: GridTile(
                    child: Container(padding: EdgeInsets.all(45),child: Image.network(item.image)),
                    header: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.deepPurple,
                      child: Text(
                        '${item.name},',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    footer: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.black,
                      child: Text(
                        '${item.price},',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
              itemCount: CatalogModels.items.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );*/
