import 'package:ecommerce/homescreen.dart';
import 'package:ecommerce/signin.dart';
import 'package:ecommerce/signup.dart';
import 'package:ecommerce/top-product-gridview.dart';
import 'package:ecommerce/userdata.dart';
import 'package:flutter/material.dart';

//import 'package:wakelock/wakelock.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Wakelock.disable();
      debugShowCheckedModeBanner: false,
      initialRoute: SignUp.path,
      routes: 
      {
        SignIn.path:(context) => SignIn(),
        SignUp.path:(context) => SignUp(),
        UserData.path:(context) => UserData(),
        HomeScreen.path:(context) => HomeScreen(),
        TopProducts.path:(context) => TopProducts(),
      },
    );
  }
}
