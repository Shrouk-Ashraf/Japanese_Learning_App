import 'dart:math';

import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/list_item.dart';

import '../models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> familyMembers =const [
    ItemModel(japaneseName: "Chichi",englishName: "father",
        sound: "sounds/family_members/father.wav",
        itemImage: "assets/images/family_members/family_father.png"),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        japaneseName: 'Haha',
        englishName: 'mother',
        itemImage: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        japaneseName: 'Sobo',
        englishName: 'grandmother',
        itemImage: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
        sound: 'sounds/family_members/grand father.wav',
        japaneseName: 'Ojiisan',
        englishName: 'grandfather',
        itemImage: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
        sound: 'sounds/family_members/older bother.wav',
        japaneseName: 'Nīsan',
        englishName: 'older brother',
        itemImage: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        japaneseName: 'Ane',
        englishName: 'older sister',
        itemImage: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        japaneseName: 'Otouto',
        englishName: 'little brother',
        itemImage: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        japaneseName: 'Imouto',
        englishName: 'little sister',
        itemImage: 'assets/images/family_members/family_younger_sister.png',
    ),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        japaneseName: 'Musuko',
        englishName: 'son',
        itemImage: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      japaneseName: 'Musume',
      englishName: 'daughter',
      itemImage: 'assets/images/family_members/family_daughter.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text("Family Members"),
        ),
        body: ListView.builder(
          itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(item: familyMembers[index],itemContainerColor: Color(0xff558B37),);
        },
        )
    );
  }
}
