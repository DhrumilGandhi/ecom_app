import 'package:ecom_app/models/catalog.dart';
import 'package:ecom_app/widgets/homeScreenWidgets/catalog_image.dart';
import 'package:ecom_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.accentColor).bold.make(),
            catalog.desc.text.size(8.0).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}  ".text.make(),
                ElevatedButton(
                  onPressed: () {},
                  child: "Add To Cart".text.make(),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).roundedLg.square(150).make().py16();
  }
}