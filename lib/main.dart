import 'package:flutter/material.dart';
import 'package:foodapp/screens/2page.dart';
import 'package:foodapp/screens/AnimatedDre.dart';
import 'package:foodapp/screens/Continue.dart';
import 'package:foodapp/screens/HomePage.dart';
import 'package:foodapp/screens/Login.dart';
import 'package:foodapp/screens/Register.dart';
import 'package:foodapp/screens/orderpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
     //home: const RegisterPage(),
      //home: const ContinuePage(),
   // home: const LoginPage(),
   // home:const FirstPage(),
   // home: const DrawerPage(),
   //home: const OrderPage(),
   //home : const MainPage(),
    );
  }
}


