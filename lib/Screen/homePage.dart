import 'package:chattingapp/models/message_model.dart';
import 'package:chattingapp/widgets/category_select.dart';
import 'package:chattingapp/widgets/favourite_contact.dart';
import 'package:chattingapp/widgets/recent_chat.dart';
import 'package:flutter/material.dart';

class HomePAge extends StatelessWidget {
  const HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
            iconSize: 28,
            color: Colors.white,
          ),
          title: Center(
            child: Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              iconSize: 22,
              color: Colors.white,
            ),
          ],
        ),
        body: Column(
          children: [
            Category_Select(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [Favourite_contact(), Recent_Chat()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
