import "package:flutter/material.dart";
import "package:multi_store_app/widgets/appbar_widgets.dart";
class StoresScreen extends StatefulWidget {
  const StoresScreen({Key? key}) : super(key: key);

  @override
  State<StoresScreen> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title:const Center(
          child: AppBarTitle(
            title:"stores"
          
          ),
        ),
      ),
    );
  }
}