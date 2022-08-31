import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Continue.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              padding: const EdgeInsets.only(left: 20,right: 20,top: 130),
          
         child:Image.asset("assets/images/2.png"),
        
          ),
          ),

           const SizedBox(
          height: 30,

        ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)),
                  prefixIcon:const Icon(Icons.email,
                  color: Color.fromARGB(255, 25, 199, 135),),
                  hintText: "Enter Your Email"
              ),
            ),
          ),
          
            const SizedBox(
          height: 20,

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
                  hintText: "Enter Your Username"
              ),
            ),
          ),

            const SizedBox(
          height: 20,

        ),
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
                  hintText: "Enter Your Password"
              ),
            ),
          ),

          ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) {return const ContinuePage ();} ),);
          },
         child: Text(
          "Register",style: TextStyle(fontSize: 25),),
          style: ElevatedButton.styleFrom(primary:const Color.fromARGB(255, 242, 184, 97),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
          ),
          ), 
        ),

          ],
          ),
          );
    
  }
}