import 'package:ecom_app/models/catalog.dart';
import 'package:ecom_app/screen/HomeDetailsPage.dart';
import 'package:ecom_app/widgets/homeScreenWidgets/catalo_item.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomeDetailsScreen(catalog: catalog)));
            },
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}
