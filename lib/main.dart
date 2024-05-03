import 'package:custom_widgets_obj/Design_Card.dart';
import 'package:custom_widgets_obj/Item_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(129, 139, 127, 71),
          foregroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Text(
            'Bakery App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.exit_to_app,
                size: 30,
              ),
            ),
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Design_Model(item: item[index]);
          },
          itemCount: item.length,
        ),
      ),
    );
  }
}