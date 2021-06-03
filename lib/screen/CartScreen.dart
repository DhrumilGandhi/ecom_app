import 'package:ecom_app/models/cart.dart';
import 'package:ecom_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      backgroundColor: context.canvasColor,
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalPrice}".text.xl5.color(context.accentColor).make(),
          WidthBox(30),
          ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying is not suppoted yet.".text.make()));
                  },
                  child: "Buy".text.white.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? "The Cart is Empty".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                      onPressed: () {
                        _cart.remove(_cart.items[index]);
                        setState(() {});
                      },
                      icon: Icon(Icons.remove_circle_outline)),
                  title: _cart.items[index].name.text.make(),
                ));
  }
}
