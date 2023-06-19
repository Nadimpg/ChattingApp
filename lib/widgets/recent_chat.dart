import 'package:chattingapp/Screen/chat_screen.dart';
import 'package:chattingapp/models/message_model.dart';
import 'package:flutter/material.dart';

class Recent_Chat extends StatelessWidget {
  const Recent_Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => Chat_Screen(
                                  User: chat.sender,
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                        color: chat.unread ? Color(0xFFFFEFEE) : Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(chat.sender.imgurl),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chat.sender.name,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                  child: Text(
                                    chat.text,
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              chat.time,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            chat.unread
                                ? Container(
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'New',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 12),
                                    ),
                                  )
                                : Text(''),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
