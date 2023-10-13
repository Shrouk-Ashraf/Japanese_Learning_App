import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';


class ItemInfo extends StatelessWidget {
  const ItemInfo({Key? key,required this.item}) : super(key: key);
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 FittedBox(fit: BoxFit.contain,
                   child: Text(item.japaneseName,style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                    ),
                      maxLines: 2,),
                 ),

                Text(item.englishName,style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
                ),
              ],
            ),
          ),
        ),
        const Spacer(flex: 2,),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: (){
              final player = AudioPlayer();
              PlayerMode.mediaPlayer;
              player.play(AssetSource(item.sound));
            },
            icon: const Icon(Icons.play_arrow,color: Colors.white,),
          ),
        )
      ],
    );
  }
}
