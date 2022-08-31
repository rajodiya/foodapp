import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/screens/Login.dart';
import 'package:foodapp/screens/Register.dart';
import 'package:foodapp/screens/class.dart';
import 'package:foodapp/screens/class.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int currentindex=0;

Color currentcolor =Color.fromARGB(255, 25, 199, 135);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0Xff22C7A9),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 70,
                ),
                child: Image.asset("assets/images/1.png"),
              ),
            ),
            Container(
              child: const Text(
                "Foodienator",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),

            const Center(
              child: (Text(
                "Order your favorite Meals",
                style: TextStyle(
                  //fontFamily: "poppins",
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),

            const Center(
              child: (Text(
                "Here !",
                style: TextStyle(
                  //fontFamily: "poppins",
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),

            // SizedBox(
            //   height: 50,
            //   width: 0.05,
            // ),
            const SizedBox(
              height: 100,
            ),

            Column(
              children: [
             
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                     decoration:const BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromARGB(255, 25, 199, 135),
                    ),
                    height: height / 13,
                    width: width / 1,

                    child:const Center(child:   Text("Login",style: TextStyle(fontSize: 25),)),

                  ),
                ),
                SizedBox(height: height*0.05,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));

                  },
                  child: Container(
                    height: height / 15,
                    width: width / 1,
                    decoration:const BoxDecoration(
borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color.fromARGB(255, 25, 199, 135),
                    ),
                    child: const Center(
                        child: Text(
                      "Register",
                      style: TextStyle(fontSize: 25),
                    )),
                  ),
                )
              ],
            )
//           ToggleSwitch(
//             minHeight: 50,
//             minWidth: 100,
//             fontSize: 16,
//           activeBgColor: [  Color.fromARGB(255, 27, 173, 156)],
//           activeFgColor: Colors.white,
//           inactiveBgColor: Colors.white,
//           inactiveFgColor: Colors.black,
//   initialLabelIndex: 0,
//   totalSwitches: 2,
//   labels: const ["Sing in", "Register"],
//   // onToggle: (index) {
//   //   print('switched to: $index');
//   // },
// ),
          ],
        ),
      ),
    );
  }
}
