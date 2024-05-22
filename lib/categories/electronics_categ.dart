import "package:flutter/material.dart";
// import "package:multi_store_app/categories/men_categ.dart";
// import "package:multi_store_app/minor_screens/subcateg_products.dart";
import "package:multi_store_app/utilities/categ_list.dart";
import "package:multi_store_app/widgets/categ_widgets.dart";

class ElectronicsCategory extends StatelessWidget {
  const ElectronicsCategory({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children:[ Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            height:MediaQuery.of(context).size.height * 0.8,
            width:MediaQuery.of(context).size.width * 0.75 ,
            
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text("electronics",style : TextStyle(fontSize:24,fontWeight:FontWeight.bold,letterSpacing: 1.5)),
                    ),
                    Column(
                      children: [
                        const CategHeaderLabel(headerLabel: "electronics"),
                        SizedBox(height:MediaQuery.of(context).size.height * 0.68,
                        child:GridView.count(
                          mainAxisSpacing: 70,
                          crossAxisSpacing: 15,
                          crossAxisCount:3,children:List.generate(electronics.length, (index){
                          return SubcategModel(
                            maincategName:"electronics" ,
                            subCategName: electronics[index],
                            assetName:"images/electronics/electronics$index.jpg" ,
                            subcategLabel: electronics[index],
                          );
                        }),)
                        ),
                        
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          bottom:0,
          right:0,
          child:SliderBar(maincategName: "electronics",),)
        ],
      ),
    );
  }
  
}

