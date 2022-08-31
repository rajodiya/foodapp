import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Continue.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

     return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0Xff22C7A9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [ 
          Center(
            child:
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 100),
          
         child:Image.asset("assets/images/4.png"),
         
        
          ),
          ),

           Container(
            child: const Text("Welcome Back",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 30,
              color: Colors.black,
            ),),),
            

             const  Center(
              child: (Text("Lorem ipsum dolor sit amet, consectetur  ",
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),)),
            ),
             const  Center(
              child: (Text(" adipiscing elit. Diam maecenas mi non sed ut  ",
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),)),
            ),
             const  Center(
              child: (Text(" odio. Non, justo, sed facilisi et. ",
              style: TextStyle(
                fontSize: 10,
                color: Colors.black,
              ),)),
            ),

              Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)),
                  prefixIcon: const Icon(Icons.person,
                  color: Color.fromARGB(255, 25, 199, 135),),
                  hintText: "Username , Email"
              ),
            ),
          ),
           const SizedBox(
          height: 10),
            Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)),
                  prefixIcon: const Icon(Icons.lock,
                  color: Color.fromARGB(255, 25, 199, 135),),
                  hintText: "Password"
              ),
            ),
          ),

           const SizedBox(
          height: 10),

          Padding(
            padding: const EdgeInsets.only(right: 20,left: 20),
            child: Row(
              children:const[
                Text("Sing Up",
                 style: TextStyle(
                color: Colors.white,
                 ),

                 ),
                 Spacer(),
                Text("Forgot Password ?")
              ],
            ),
          ),
           const SizedBox(
          height: 30),
            ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) {return const ContinuePage ();} ),);
            },
         child: Text(
          "Login",style: TextStyle(fontSize: 35),),
          style: ElevatedButton.styleFrom(primary:const Color.fromARGB(255, 242, 184, 97),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
          ),
          ),

          
        ),
     ],
      ),
     );
    
  }
}