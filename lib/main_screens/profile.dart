import "package:flutter/material.dart";
import "package:multi_store_app/customer_screens/customer_orders.dart";
import "package:multi_store_app/customer_screens/wishlist.dart";
import "package:multi_store_app/main_screens/cart.dart";
import "package:multi_store_app/main_screens/welcome_screen.dart";
// import "package:multi_store_app/main_screens/welcome_screen.dart";

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body:SafeArea(
        child: Stack(
         
          children: [
             Container(
              height: 230,
        
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow,Colors.brown])),),
           CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.white,
               expandedHeight: 140,
               flexibleSpace: LayoutBuilder(
                 builder: (context,constraints){
                  return FlexibleSpaceBar(
                   title:AnimatedOpacity(
                   duration: const Duration(milliseconds: 200),opacity:constraints.biggest.height<=120 ? 1 : 0,
                   child:const Center(child: Text("Account",style:TextStyle(color: Colors.black))),
              ),
              background: Container(
                decoration:const BoxDecoration(
                  gradient: LinearGradient( 
                    colors:[Colors.yellow,Colors.brown])
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(top: 25,left: 35,),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("images/inapp/guest.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "guest".toUpperCase(),
                        style:const TextStyle(
                          fontSize: 24,fontWeight: FontWeight.w600,
                        ),
                        ),
                    ),
                    ],),
                  ),
                  
                ),
                
                );
          
              
            }
            ),
            ),
            SliverToBoxAdapter(
              child:Column(children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 80,
                  decoration: BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    
                  ),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      Container(decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius:BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)) 
                      ),
                      
                      child: TextButton(
                        child:SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const Center(child: Text("Cart",style: TextStyle(color: Colors.yellow,fontSize: 24),))),
                        onPressed:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> const CartScreen()));
                        }),
                        ),
                        Container(
                      color: Colors.yellow,
                        child: TextButton(
                        child:SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const Center(child: Text("Orders",style: TextStyle(color: Colors.black54,fontSize: 20),))),
                        onPressed:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> const CustomerOrders()));
                        }),
                        ),
                        Container(decoration: const BoxDecoration(
                        color: Colors.black54,
                        borderRadius:BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30)) 
                      ),
                      
                      child: TextButton(
                        child:SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const Center(child: Text("Wishlist",style: TextStyle(color: Colors.yellow,fontSize: 20),))),
                        onPressed:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> const WishlistScreen()));
                        }),
                        ),
          
                    ],)
                ),
                Container(
                  color: Colors.grey.shade300,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 150,
                        child:Image(image:AssetImage("images/inapp/logo.jpg"))
                      ),
                    
                               const ProfileHeaderLabel(headerLabel: "  Account Info  "),
                  
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        
                      ),
                      child: const Column(
                        children: [
                        RepeatedListTile(
                        icon: Icons.email, 
                        // onPressed: (){},
                        subTitle: "example@gmail.com", 
                        title: "Email Address"),
                        YellowDivider(),
                           RepeatedListTile(
                        icon: Icons.phone, 
                        // onPressed: (){},
                        subTitle: "+254700000000", 
                        title: "Phone No."),
                          YellowDivider(),
                           RepeatedListTile(
                        icon: Icons.location_pin, 
                        // onPressed: (){},
                        subTitle: "example:2574 NAIROBI", 
                        title: "Address"),
                          
                      ],),
                      ),
                  ),
                   const ProfileHeaderLabel(headerLabel:"    Account Settings.    " ,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 260,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        
                      ),
                      child: Column(
                        children: [
                        RepeatedListTile(
                          title: "Edit Profile",
                          
                          icon: Icons.edit,
                          onPressed: (){},
                        ),
                          const YellowDivider(),
                         RepeatedListTile(
                          title: "Change Password",
                          
                          icon: Icons.lock,
                          onPressed: (){},
                          ),
                          const YellowDivider(),
                          RepeatedListTile(
                          title: "Log Out",
                          
                          icon: Icons.logout,
                           onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WelcomeScreen()));
                          // onPressed: (){
                          //   //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const WelcomeScreen()
                          //   //  )
                             
                          //   //  );
        
                             
                          },
                          ),
                          
                      ],),
                      ),
                  ),
                  
                  
                              ],),
                ),],),
            )
          ],
          ),],
        ),
      ),
      
    );
  }
}

class YellowDivider extends StatelessWidget {
  const YellowDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Divider(color: Colors.yellow,thickness: 1,),
    );
  }
}

class RepeatedListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Function()? onPressed;

  const RepeatedListTile({
    Key? key,  required this.icon,  this.onPressed,  this.subTitle="", required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child:  ListTile(
        title:Text(title),
        subtitle: Text(subTitle),
        leading: Icon(icon),
        ),
    );
  }
}

class ProfileHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const ProfileHeaderLabel({
    Key? key, required this.headerLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
            width: 50,
            child:Divider(
              color: Colors.grey,
            thickness: 1,)
          ),
          Text(headerLabel,style:const TextStyle(color: Colors.grey,fontSize: 24,fontWeight: FontWeight.w600),
          ),
           const SizedBox(
            height: 40,
            width: 50,
            child:Divider(
              color: Colors.grey,
            thickness: 1,)
          ),
    
    
    ],),            );
  }
}







 