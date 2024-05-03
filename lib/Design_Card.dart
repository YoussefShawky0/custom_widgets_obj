import 'package:flutter/material.dart';

import 'Item_Model.dart';

class Design_Model extends StatelessWidget {
  final Item item;
  Design_Model({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                item.image,
                width: 200,
              ),
            ),
            Text(
              item.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  wordSpacing: .5,
                  letterSpacing: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
