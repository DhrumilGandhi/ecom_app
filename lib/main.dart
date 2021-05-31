import 'package:ecom_app/screen/CartScreen.dart';
import 'package:ecom_app/screen/HomeScreen.dart';
import 'package:ecom_app/screen/LoginScreen.dart';
import 'package:ecom_app/utils/routes.dart';
import 'package:ecom_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheame.lightTheme(context),
      darkTheme: MyTheame.darkTheme(context),
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/": (context) => LoginScreen(),
        MyRoutes.homeRoutes: (context) => HomeScreen(),
        MyRoutes.loginRoutes: (context) => LoginScreen(),
        MyRoutes.cartRoutes: (context) => CartScreen(),
      },
    );
  }
}
