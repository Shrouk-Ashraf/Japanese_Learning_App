import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/phrase_item.dart';

import '../models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<ItemModel> number = const [
    ItemModel(
        japaneseName: "Kimasu ka?",
        englishName: "Are you Coming?",
        sound: "sounds/phrases/are_you_coming.wav"),
    ItemModel(
        japaneseName: "Kōdoku suru koto o wasurenaide kudasai",
        englishName: "Don't forget to subscribe",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    ItemModel(
        japaneseName: "Go kibun wa ikagadesu ka?",
        englishName: "How are you feeling?",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    ItemModel(
        japaneseName: "Watashi wa anime ga daisukidesu",
        englishName: "I love anime",
        sound: "sounds/phrases/i_love_anime.wav"),
    ItemModel(
        japaneseName: "Puroguramingu ga daisukidesu",
        englishName: "I love programming",
        sound: "sounds/phrases/i_love_programming.wav"),
    ItemModel(
        japaneseName: "Puroguramingu wa kantandesu",
        englishName: "Programming is easy",
        sound: "sounds/phrases/programming_is_easy.wav"),
    ItemModel(
        japaneseName: "Anata no namae wa nanidesu ka?",
        englishName: "What is your name?",
        sound: "sounds/phrases/what_is_your_name.wav"),
    ItemModel(
        japaneseName: "Doko ni iku no?",
        englishName: "Where are you going?",
        sound: "sounds/phrases/where_are_you_going.wav"),
    ItemModel(
        japaneseName: "Hai, kimasu",
        englishName: "Yes i am coming",
        sound: "sounds/phrases/yes_im_coming.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Phrases"),
        ),
        body: ListView.builder(
            itemCount: number.length,
            itemBuilder: (context, index){
              return PhraseItem(item: number[index], itemContainerColor:const Color(0xff50ADC7),);
            })
    );
  }
}
