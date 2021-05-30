import 'package:ecom_app/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image})
      : assert(image != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .p8
        .rounded
        .color(MyTheame.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}
