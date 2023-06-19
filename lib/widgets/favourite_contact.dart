import 'package:chattingapp/Screen/chat_screen.dart';
import 'package:chattingapp/models/message_model.dart';
import 'package:flutter/material.dart';

class Favourite_contact extends StatelessWidget {
  const Favourite_contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Favourite Contacts',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
            ],
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              itemCount: favourite.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                Chat_Screen(User: favourite[index])));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(favourite[index].imgurl),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          favourite[index].name,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
