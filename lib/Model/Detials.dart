import 'package:foodapp/Model/Data.dart';

class Data{
  static List<FoodItems>
  getdetails(){
    List<FoodItems>list=[
      FoodItems(
        images:"assets/images/15.png",
        text1:"eag",
        text2:"jhfkj",
        itemsname:" Egg",
      ),
      FoodItems(
        images:"assets/images/16.png",
         text1:"burger" ,
         text2: "bfng" ,
         itemsname : " Burger",
         ),
          FoodItems(
        images:"assets/images/17.png",
         text1:"saled" ,
         text2: "bfng" ,
         itemsname : " Slede",
         ),
          FoodItems(
        images:"assets/images/18.png",
         text1:"pizza" ,
         text2: "bfng" ,
         itemsname : " Pizza",
         ),
    ];
    return list;
  }
}