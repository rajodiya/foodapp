import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapp/Model/Data.dart';
import 'package:foodapp/Model/Detials.dart';
import 'package:foodapp/screens/AnimatedDre.dart';

import 'orderpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //List<FoodItems>food=[];
  List<OrderPage> datas = [];
  List<FoodItems> data = [];
  bool _islike = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   @override
  void initState() {
    data = Data.getdetails();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Row(
          children: [
            _sheet(icon: Icons.home, text: "Search", index: 0),
            _sheet(icon: Icons.favorite_outline_rounded, text: "order", index: 1),
            _sheet(icon: Icons.filter, text: "image", index: 2),
            _sheet(icon: Icons.shopping_cart, text: "Sport", index: 3),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 77, 132, 195),
        title: const Text(""),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("your order")),
                const PopupMenuItem(child: Text("cencel order")),
              ];
            },
          ),
        ],
      ),

      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 18,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> OrderPage(
                        items: data[index],
                      ),
                      ), );
                },
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
         
                       const Icon(Icons.radio_button_checked,
                       color: Color.fromARGB(255, 79, 210, 188),),
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
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(data[index].images),
                    ),
                   Text(data[index].text1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                      
                       Text(data[index].text2),
                        IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          
                          icon: const Icon(Icons.add),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
       drawer:const DrawerPage(),
    );
  }
}

_sheet({required IconData icon, required String text, required int index}) {
  return Expanded(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        Text(text.toString()),
      ],
    ),
  );
}
