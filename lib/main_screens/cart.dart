import "package:flutter/material.dart";
import "package:multi_store_app/main_screens/customer_home.dart";
import "package:multi_store_app/widgets/appbar_widgets.dart";
import "package:multi_store_app/widgets/yellow_button.dart";
// import "package:multi_store_app/widgets/appbar_widgets.dart";

class CartScreen extends StatefulWidget {

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(title: "Cart"),
        actions:[
          IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.delete_forever,
              color:Colors.black,
            ),

          ),
        ],
     
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Your cart is empty!",
              style:TextStyle(fontSize: 30),),
              
                const SizedBox(
                height:50,
              ),
              
              Material (
                color:Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(25),
                child:MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.6,
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CustomerHomeScreen()));
                  },
                  child: const Text( "Continue Shopping",
                  style:TextStyle(fontSize:18,color:Colors.white),
                  ),
                  
                ),
              ),
            ],
          ),
          ),
          bottomSheet: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Row(
                 children: [
                    Text("Total:  Ksh ",
                               style:TextStyle(fontSize:18),
                               ),
                    Text("00.00 ",
              style:TextStyle(fontSize:20 ,fontWeight: FontWeight.bold,color:Colors.red,),
              ),
                 ],
               ),
                
              YellowButton(
                onPressed: (){},
                label: "CHECK OUT",
                width: 0.45,
              ),
            
            ],),
          ),
    );
 }}

