import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/item_info.dart';

import '../models/item_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key,
    required this.item, required this.itemContainerColor
  }) : super(key: key);
  final ItemModel item;
  final Color itemContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: itemContainerColor,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC)
              ,child: Image.asset(item.itemImage!)),
          Expanded(
              child: ItemInfo(item: item,))

        ],
      ),
    );
  }
}
