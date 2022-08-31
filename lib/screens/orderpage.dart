import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/Model/Data.dart';

class OrderPage extends StatefulWidget {
  final FoodItems items;
  const OrderPage({Key? key, required this.items}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  bool _islike = false;

  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int minimum = 0;
  int maximum = 100;
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 100,
              ),
              child: Image.asset(widget.items.images),
            ),
          ),
          Text(widget.items.text1),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children:  [
                Text(widget.items.itemsname,
                  
                  style:const TextStyle(
                    fontFamily: "poppins",
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text(
              "About this product",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 200),
            child: Text(
              "Crunchy beef burger",
              style: TextStyle(
                //fontFamily: "poppins",
                fontSize: 17,
                color: Color.fromARGB(255, 155, 152, 152),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 190),
            child: Text(
              "with onion and lettuce",
              style: TextStyle(
                //fontFamily: "poppins",
                fontSize: 17,
                color: Color.fromARGB(255, 155, 152, 152),
              ),
            ),
          ),
          ListTile(
          
            leading: Image.asset("assets/images/12.png"),
            title:const  Text(
              "Delivery Time",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            subtitle: const Text("25 minutes"),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _islike = !_islike;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: _islike ? Colors.red : Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Container(
                      child: FloatingActionButton(
                        heroTag: null,
                        backgroundColor:const Color.fromARGB(255, 42, 202, 178),
                        onPressed: decrement,
                        child:const Icon(Icons.remove),
                      ),
                    ),
                  ),
                 const SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Text(
                      "$currentindex",
                      style:
                        const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                const  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: FloatingActionButton(
                      backgroundColor:const Color.fromARGB(255, 42, 202, 178),
                      child: Icon(Icons.add,),
                    
                      onPressed: increment,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 64, 201, 185),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void decrement(){
    if(currentindex > minimum){
      setState(() {
        currentindex--;
      },
      );
    }
  }

  void increment(){
    if(currentindex < maximum){
      setState(() {
        currentindex++;
      },
      );
    }
  }
}
