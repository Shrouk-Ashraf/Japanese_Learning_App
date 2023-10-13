import 'package:flutter/material.dart';

import '../components/list_item.dart';
import '../models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<ItemModel> number = const [
    ItemModel(itemImage: "assets/images/numbers/number_one.png",
        japaneseName: "ichi", englishName: "one",
        sound: "sounds/numbers/number_one_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_two.png",
        japaneseName: "Ni", englishName: "two",
        sound: "sounds/numbers/number_two_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_three.png",
        japaneseName: "San", englishName: "three",
        sound: "sounds/numbers/number_three_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_four.png",
        japaneseName: "Shi", englishName: "four",
        sound: "sounds/numbers/number_four_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_five.png",
        japaneseName: "Go", englishName: "five",
        sound: "sounds/numbers/number_five_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_six.png",
        japaneseName: "Roku", englishName: "six",
        sound: "sounds/numbers/number_six_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_seven.png",
        japaneseName: "Sebun", englishName: "seven",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_eight.png",
        japaneseName: "hachi", englishName: "eight",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_nine.png",
        japaneseName: "Kyū", englishName: "nine",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    ItemModel(itemImage: "assets/images/numbers/number_ten.png",
        japaneseName: "Jū", englishName: "ten",
        sound: "sounds/numbers/number_ten_sound.mp3")
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text("Numbers"),
      ),
      body: ListView.builder(
        itemCount: number.length,
          itemBuilder: (context, index){
           return ListItem(item: number[index], itemContainerColor:Colors.orange,);
          })
    );
  }
}
