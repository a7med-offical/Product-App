import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotFound extends StatelessWidget {

  const NotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Center(
             child: Column(
              
               children: [
                 Text(
          'Sorry No Product  Found 😞',
          style: TextStyle(color: Colors.black,fontSize: 25),    
        ),
        Text('Search again 🔍', style: TextStyle(color: Colors.black,fontSize: 25)),
        
               ],
             ),
    );
  }
}