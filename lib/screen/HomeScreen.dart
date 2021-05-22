import 'package:ecom_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Catalog App"),
      ),
      body: Center(child: Text("This is flutter demo")),
      drawer: MyDrawer(),
    );
  }
}
