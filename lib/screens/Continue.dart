import 'package:flutter/material.dart';
import 'package:foodapp/screens/2page.dart';

class ContinuePage extends StatefulWidget {
  const ContinuePage({Key? key}) : super(key: key);

  @override
  State<ContinuePage> createState() => _ContinuePageState();
}

class _ContinuePageState extends State<ContinuePage> {
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
          
         child:Image.asset("assets/images/3.png"),
        
          ),
          ),

           Container(
            child: const Text("Registration",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 30,
              color: Colors.black,
            ),),),
            const SizedBox(
          height: 10),
             const  Center(
              child: (Text("Complete",
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 35,
                color: Colors.black,
              ),)),
            ),

              const SizedBox(
          height: 50),

             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) {return const MainPage ();} ),);
             },
         child: Text(
          "Continue",style: TextStyle(fontSize: 25),),
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