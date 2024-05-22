import "package:flutter/material.dart";
import "package:multi_store_app/auth/customer_signup.dart";
import "package:multi_store_app/main_screens/customer_home.dart";
import "package:multi_store_app/main_screens/supplier_home.dart";
import "package:multi_store_app/main_screens/welcome_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      initialRoute: '/welcome_screen',
      debugShowCheckedModeBanner:false,

      // home:  WelcomeScreen(),
      
      routes: {
        '/welcome_screen':(context) =>  const WelcomeScreen(),
        '/customer_screen':(context) =>  const CustomerHomeScreen(),
        '/supplier_screen':(context) =>  const SupplierHomeScreen(),
        '/customer_signup':(context) =>  const CustomerRegister(),
      }
    );
  }
}

