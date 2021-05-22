import 'package:ecom_app/models/catalog.dart';
import 'package:ecom_app/widgets/drawer.dart';
import 'package:ecom_app/widgets/item_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: CatalogModels.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModels.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
