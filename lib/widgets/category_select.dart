import 'package:flutter/material.dart';

class Category_Select extends StatefulWidget {
  const Category_Select({super.key});

  @override
  State<Category_Select> createState() => _Category_SelectState();
}

class _Category_SelectState extends State<Category_Select> {
  int selectIndex = 0;
  List<String> categories = [
    'Message',
    'Online',
    'Group',
    'Request',
    'Message',
    'Online',
    'Group',
    'Request'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      color:
                          index == selectIndex ? Colors.white : Colors.white60,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            );
          }),
    );
  }
}
