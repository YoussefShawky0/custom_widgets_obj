import 'package:flutter/material.dart';
import 'Item_Model.dart';

class Design_Model extends StatelessWidget {
  final Item item;
  Design_Model({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                item.image,
                width: 100,
              ),
              Text(
                item.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
