import 'package:ecom_app/models/catalog.dart';
import 'package:ecom_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsScreen extends StatelessWidget {
  final Item catalog;

  const HomeDetailsScreen({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheame.darkBluishColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
            ).wh(100, 50)
          ],
        ).p16(),
      ),
      appBar: AppBar(),
      backgroundColor: MyTheame.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              height: 30.0,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.lg
                        .color(MyTheame.darkBluishColor)
                        .bold
                        .xl4
                        .make(),
                    catalog.desc.text.size(15).make(),
                  ],
                ).p64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
