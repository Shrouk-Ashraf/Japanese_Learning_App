import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key,required this.text,required this.color,required this.onTap}) : super(key: key);
  final String text;
  final Color color;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        alignment: Alignment.centerLeft,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(text
            ,style: const TextStyle(
              color: Colors.white,
              fontSize: 19
          ),),
        ),
      ),
    );
  }
}
