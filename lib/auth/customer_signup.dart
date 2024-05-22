// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
// import 'package:multi_store_app/main_screens/welcome_screen.dart';
import 'package:multi_store_app/widgets/auth_widget.dart';
// final TextEditingController _nameController =TextEditingController();
// final TextEditingController _emailController =TextEditingController();
// final TextEditingController _passwordController =TextEditingController();


class CustomerRegister extends StatefulWidget {
  const CustomerRegister({Key? key}) : super(key: key);

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
 
  late String name;
  late String email;
  late String password;
  final GlobalKey<FormState>_formKey=GlobalKey<FormState>();
  final GlobalKey<ScaffoldMessengerState>_scaffoldKey=GlobalKey<ScaffoldMessengerState>();
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return   ScaffoldMessenger(
      key:_scaffoldKey,
      child: Scaffold(
       body:SafeArea(
         child: Center(
           child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            reverse: true,
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: Form(
                key:_formKey,
                 child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                     const AuthHeaderLabel(headerLabel: 'sign up',),
                     Row(children: [
                     const Padding(
                       padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 40),
                       child: CircleAvatar(
                          radius:60,
                          backgroundColor: Colors.purpleAccent,
                        ),
                     ),
                      Column(
                        children: [
                          Container(
                           
                              decoration:const BoxDecoration(
                                color:Colors.purple,
                                borderRadius:BorderRadius.only(
                                  topLeft:Radius.circular(15),
                                topRight: Radius.circular(15))
                              ),
                              child:IconButton(
                                icon:const Icon(
                                  Icons.camera_alt,
                                  color:Colors.white),
                                  onPressed: (){
                                   
                                    print('pick image from camera');
                                  }
                                  ,)
                 
                            ),
                            const SizedBox(height: 6,),
                            Container(
                           
                              decoration:const BoxDecoration(
                                color:Colors.purple,
                                borderRadius:BorderRadius.only(
                                  bottomLeft:Radius.circular(15),
                                bottomRight: Radius.circular(15))
                              ),
                              child:IconButton(
                                icon:const Icon(
                                  Icons.photo,
                                  color:Colors.white),
                                  onPressed: (){
                                 
                                    print('pick image from gallery');
                                  }
                                  ,)
                 
                            ),
                        ],
                      )
                    ],),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty){
                            return 'please enter your full name';
                          }return null;
                          
                        },
                        onChanged: (value){
                          name =value;
                        },
                        // controller: _nameController,
                        // keyboardType: TextInputType.text,
                        decoration:textFormDecoration.copyWith(labelText:'Full Name',hintText:'Enter Your Full Name')
                            ),
                    ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty){
                            return 'please enter your email';
                          }
                          else if(value.isValidEmail()){
                            
                            return 'Invalid Email';
                          }else if(value.isValidEmail()==true){
                            return null;
                          }
                          return null;
                          
                        },
                        onChanged: (value){
                          email =value;
                        },
                        // controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration:textFormDecoration.copyWith(labelText:'Email',hintText:'Enter Your Email')
                            ),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty){
                            return 'please enter your password';
                          }return null;
                          
                        },
                        onChanged: (value){
                          password =value;
                          // print(password);
                        },
                        // controller: _passwordController,
                        
                        obscureText: passwordVisible,
                        decoration:textFormDecoration.copyWith(
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                passwordVisible=!passwordVisible;
                              });
                            }, 
                            icon:  Icon(
                              passwordVisible?
                              Icons.visibility:Icons.visibility_off,color: Colors.purple,)),
                          labelText:'Password',hintText:'Enter Your Password')
                            ),
                    ),
                    HaveAccount(
                      haveAccount: 'already have account? ',
                      actionLabel: 'Log In',
                      onPressed: (){},
                      ),
                    AuthMainButton(
                      mainButtonLabel: 'sign up',
                      onPressed: () {
                        if (_formKey.currentState!.validate()){
                         
                          print('Valid');
                          
                          print(name);
                          print(email);
                          print(password);
                        }else {
                          MyMessageHandler.showSnackBar(_scaffoldKey,'please fill all fields');
                         
                        }
                      },
                    )
                    
                 
                 ],
                 
                 
                 ),
               ),
             ),
           ),
         ),
       ),
       
      ),
    );
  }
}

class MyMessageHandler{
   static void showSnackBar(var _scaffoldKey,String message){
    _scaffoldKey.currentState!.hideCurrentSnackBar();
    _scaffoldKey.currentState!.showSnackBar( SnackBar(
                            duration: const Duration(seconds: 1),
                            backgroundColor:Colors.yellow,
                           content:Text(message,
                           textAlign: TextAlign.center,
                           style:const TextStyle(
                            fontSize: 18,
                            color:Colors.black)
                            ),
                            ),);
  }
}