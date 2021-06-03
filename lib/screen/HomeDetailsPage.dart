import 'package:ecom_app/models/catalog.dart';
import 'package:ecom_app/widgets/homeScreenWidgets/add_to_cart.dart';
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
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.xl4.make(),
            AddToCart(catalog: catalog).wh(120, 50)
          ],
        ).p16(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
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
                color: context.cardColor,
                width: context.screenWidth,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      catalog.name.text.lg
                          .color(context.accentColor)
                          .bold
                          .xl4
                          .make(),
                      catalog.desc.text.size(15).make(),
                      15.heightBox,
                      "Sit et labore sed ea stet no sadipscing justo eirmod, lorem stet et amet accusam lorem rebum. Erat amet aliquyam at sit, takimata at sed voluptua sed sanctus amet labore ea, dolores sed invidunt amet magna voluptua dolores, kasd sea ipsum est sit sed rebum. Ea magna clita rebum sanctus.."
                          .text
                          .make()
                    ],
                  ).p64(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
