import "dart:math";

import"package:flutter/material.dart";
import "package:multi_store_app/auth/customer_signup.dart";
import "package:multi_store_app/main_screens/customer_home.dart";
import "package:multi_store_app/main_screens/supplier_home.dart";
// import "package:multi_store_app/main_screens/customer_home.dart";
// import "package:multi_store_app/main_screens/customer_home.dart";
// import "package:multi_store_app/main_screens/supplier_home.dart";
import "package:multi_store_app/widgets/yellow_button.dart";
import "package:animated_text_kit/animated_text_kit.dart";

const textColors = [
    Colors.yellowAccent,
                      Colors.red,
                      Colors.blueAccent,
                      Colors.green,
                      Colors.purple,
                      Colors.teal,

];
const textStyle =   TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      
                    );
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 2));
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body:SafeArea(
        child: Container(
          decoration:  const BoxDecoration(
            image:DecorationImage(image:AssetImage(
              "images/inapp/bgimage.jpg"),
              fit: BoxFit.cover,
                        )
              ),
              constraints: const BoxConstraints.expand(),
              child: SafeArea(
        
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AnimatedTextKit(animatedTexts: [
                      ColorizeAnimatedText("WELCOME",
                      textStyle: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      colors: textColors,
                      // 
                      
                      ),
                      ColorizeAnimatedText("Eliam Store",
                      textStyle:textStyle,
                      colors: textColors,
                      ),
                      
                      ],
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      ),
                      
                  // const Text("WELCOME",style:TextStyle(color:Colors.white,fontSize:30),
                  // ),
                  const SizedBox(
                    height: 120,
                    width: 200,
                    child: Image(image: AssetImage("images/inapp/logo.jpg")),
                  ),
                  SizedBox(
                    height: 80,
                    child: DefaultTextStyle(
                      style: const TextStyle(fontSize: 45,fontWeight: FontWeight.bold,
                      color:Colors.lightBlueAccent),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText("Buy"),
                          RotateAnimatedText("Shop"),
                          RotateAnimatedText("Eliam Store"),
                      ],
                      repeatForever: true,
                      ),
                    ),
                  ),
                  //  const Text(
                  //   "SHOP",
                  //   style:TextStyle(
                  //     color:Colors.white,
                  //     fontSize:30,
                  //     ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white38,
                              borderRadius: BorderRadius.only(
                                topLeft:Radius.circular(50),bottomLeft: Radius.circular(50),
                          
                          )),
                          child: const Padding(
                          
                            padding: EdgeInsets.all(12.0),
                            child: Text("Suppliers Only",style:TextStyle(
                              color: Colors.yellowAccent,
                              fontSize: 26,
                              fontWeight: FontWeight.w600
                              )),
                          ),
                          
                          ),
                           const SizedBox(
                        height: 6,
                      ),
                       Container(
                        height:60,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: const BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(50),bottomLeft: Radius.circular(50),
                      
                      )),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        AnimatedLogo(controller: _controller),
                        YellowButton(
                          label: "Log In", 
                          onPressed: (){
                            //  Navigator.pushReplacementNamed(
                            //   context,
                            //   '/supplier_home',
                            //   );
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CustomerHomeScreen()));
                          }, 
                          width: 0.25),
                         Padding(
                           padding: const EdgeInsets.only(
                            right: 8),
                           child: YellowButton(
                            label: "Sign Up", 
                            onPressed: (){}, 
                            width: 0.25),
                         )
                      ],)
                      
                      
                      
                      ),
                        ],
                      ),
                    ],
                  ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height:60,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: const BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.only(
                            topRight:Radius.circular(50),bottomRight: Radius.circular(50),
                      
                      )),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                        Padding(
                      
                          padding: const EdgeInsets.only(left: 8),
                          child: YellowButton(
                            label: "Log In", 
                            onPressed: (){
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const SupplierHomeScreen()));
                          }, width: 0.25),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(
                            right: 8),
                            child: YellowButton(
                            label: "Sign Up", 
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CustomerRegister()));
                              
                            }, width: 0.25),
                         ),
                         AnimatedLogo(controller: _controller),
                      ],)
                      
                      
                      
                      ),
                    ],
                  ),
                  Padding(
                    
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Container(
                     
                      decoration:  BoxDecoration(
                        color: Colors.white38.withOpacity(0.3)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GoogleFacebookLogin(
                              label:"Google",
                              onPressed: (){},
                              child: const Image(image:AssetImage("images/inapp/google.jpg")),
                            ),
                            GoogleFacebookLogin(
                              label:"Facebook",
                              onPressed: (){},
                              child: const Image(image:AssetImage("images/inapp/facebook.jpg")),
                            ),
                            GoogleFacebookLogin(
                              label:"Guest",
                              onPressed: (){},
                              child: const Icon(Icons.person,
                              size:55,
                              color: Colors.lightBlueAccent,
                              )
                            ),
                            ])
                        ,
                    ),
                  )
                ],),
              )
        
         ),
      )
    );
  }
}

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({
    Key? key,
    required AnimationController controller,
  }) : _controller = controller, super(key: key);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:_controller.view,
      builder:(context,child){
        return Transform.rotate(angle:_controller.value*2*pi,child:child,);
      },
      child: const Image(
        image:AssetImage("images/inapp/logo.jpg")),
    );
  }
}

class GoogleFacebookLogin extends StatelessWidget {
  final String label;
  final Function() onPressed;
  final Widget child;
  
  const GoogleFacebookLogin({
    Key? key, required this.child,required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 8),
    child: InkWell(
      onTap: onPressed,
      child:  Column(children:[
      SizedBox(
        height: 50,
        width: 50,
        child:child,),
        Text(label,
        style:const TextStyle(color: Colors.white))
                          ]),
    ),
                          );
  }
}
