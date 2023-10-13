
import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/list_item.dart';

import '../models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  final List<ItemModel> colors =const [
    ItemModel(
        sound: "sounds/colors/yellow.wav",
        japaneseName: "Kiiro",
        englishName: "yellow",
        itemImage: "assets/images/colors/yellow.png"),
    ItemModel(
      sound: 'sounds/colors/white.wav',
      japaneseName: 'Shiro',
      englishName: 'white',
      itemImage: 'assets/images/colors/color_white.png',
    ),
    ItemModel(
      sound: 'sounds/colors/red.wav',
      japaneseName: 'Aka',
      englishName: 'red',
      itemImage: 'assets/images/colors/color_red.png',
    ),
    ItemModel(
      sound: 'sounds/colors/green.wav',
      japaneseName: 'Midori',
      englishName: 'green',
      itemImage: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'sounds/colors/gray.wav',
      japaneseName: 'Gurē',
      englishName: 'grey',
      itemImage: 'assets/images/colors/color_gray.png',
    ),
    ItemModel(
      sound: 'sounds/colors/brown.wav',
      japaneseName: 'Chairo',
      englishName: 'brown',
      itemImage: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'sounds/colors/black.wav',
      japaneseName: 'Kuro',
      englishName: 'black',
      itemImage: 'assets/images/colors/color_black.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Colors"),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(item: colors[index],itemContainerColor: const Color(0xff79359F),);
          },
        )
    );
  }
}
