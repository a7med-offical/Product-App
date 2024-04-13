import 'package:flutter/material.dart';

class TrendingProduct extends StatelessWidget {
  const TrendingProduct({super.key, required this.text, required this.img});

  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(50)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 70, backgroundImage: AssetImage(img)),
          Text(
            text,
            style: const TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
