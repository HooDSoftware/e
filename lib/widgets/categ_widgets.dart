import "package:flutter/material.dart";
import "package:multi_store_app/minor_screens/subcateg_products.dart";

class SliderBar extends StatelessWidget {
  final String maincategName;
  const SliderBar({
    Key? key,required this.maincategName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:MediaQuery.of(context).size.height * 0.8,
            width:MediaQuery.of(context).size.width * 0.05,
            child:Padding(
    padding: const EdgeInsets.symmetric(vertical: 40),
    child: Container(decoration: BoxDecoration(color:Colors.brown.withOpacity(0.2),borderRadius: BorderRadius.circular(50)),
    child:RotatedBox(
      quarterTurns: 3,
      child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:[
      // const Text("<<",style:TextStyle(color:Colors.brown,fontSize:16,fontWeight:FontWeight.w600,letterSpacing: 10),
      // ),
      maincategName == "beauty" ? const Text(""):const Text("<<",),
      Text(maincategName.toUpperCase(),style:const TextStyle(color:Colors.brown,fontSize:16,fontWeight:FontWeight.w600,letterSpacing: 10),
      ),
       const Text(">>",style:TextStyle(color:Colors.brown,fontSize:16,fontWeight:FontWeight.w600,letterSpacing: 10),
      ),
      ],
      ),
    ),),
            )
            );
  }
}

class SubcategModel extends StatelessWidget {
  final String maincategName;
  final String subCategName;
  final String assetName;
  final String subcategLabel;
  const SubcategModel({
    Key? key, required this.maincategName,required this.subCategName,required this.assetName,required this.subcategLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>  SubCategProducts(
          maincategName:maincategName,
          subcategName:subCategName)));
      } ,
      child: Column(
        children: [
          SizedBox(
            // color:Colors.blue,
          height: 70,
          width: 70,
          child: Image(
            image: AssetImage(assetName),)
          ),
          Text(subcategLabel)
        ],
      ),
    );
  }
}


class CategHeaderLabel extends StatelessWidget {
  final String headerLabel;

  const CategHeaderLabel({
    Key? key,required this.headerLabel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(30.0),
      child:Text(headerLabel,
        
        style:const TextStyle( 
        fontSize:24,
        fontWeight: FontWeight.bold, 
        letterSpacing: 1.5),
        ),
      );

  }
  }
