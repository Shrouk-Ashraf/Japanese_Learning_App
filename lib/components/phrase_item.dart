import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/item_info.dart';

import '../models/item_model.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({Key? key, required this.item, required this.itemContainerColor}) : super(key: key);

  final ItemModel item;
  final Color itemContainerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: itemContainerColor,
      child: ItemInfo(item: item,),
    );
  }
}
