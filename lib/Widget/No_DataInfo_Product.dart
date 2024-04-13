import 'package:flutter/material.dart';

import 'Trending_Produt.dart';

class NoInfoProduct extends StatelessWidget {
  const NoInfoProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50.0, left: 20),
          child: Text('Trending Today ! ',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TrendingProduct(img: 'Asssets/images.jfif', text: '120\$'),
            TrendingProduct(img: 'Asssets/download (1).jfif', text: '120\$'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TrendingProduct(img: 'Asssets/images (1).jfif', text: '120\$'),
            TrendingProduct(img: 'Asssets/download(2).jfif', text: '120\$'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TrendingProduct(img: 'Asssets/download (4).jfif', text: '120\$'),
            TrendingProduct(img: 'Asssets/download (3).jfif', text: '120\$'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TrendingProduct(img: 'Asssets/download.jfif', text: '130\$'),
            TrendingProduct(img: 'Asssets/download (1).jfif', text: '120\$'),
          ],
        ),
      ],
    );
  }
}
