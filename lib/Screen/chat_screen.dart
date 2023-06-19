import 'package:chattingapp/models/message_model.dart';
import 'package:chattingapp/models/user_model.dart';
import 'package:flutter/material.dart';

class Chat_Screen extends StatefulWidget {
  final user User;
  Chat_Screen({required this.User});

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  _buildmessage(Message message, bool isme) {
    return Container(
        margin: isme
            ? EdgeInsets.only(top: 8, left: 80, bottom: 8)
            : EdgeInsets.only(top: 8, right: 80, bottom: 8),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        color: isme ? Color.fromARGB(255, 235, 229, 229) : Color(0xFFFFEFEE),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.time,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(message.text),
          ],
        ));
  }

  _buildmesgcomposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      height: 70,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo),
            iconSize: 28,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
              child: TextField(
            textCapitalization: TextCapitalization.sentences,
            decoration:
                InputDecoration.collapsed(hintText: 'send a message ....'),
          )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            iconSize: 28,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.plus_one),
          iconSize: 28,
          color: Colors.white,
        ),
        title: Center(
          child: Text(
            widget.User.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: 22,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15),
                      itemCount: chats.length,
                      itemBuilder: (context, index) {
                        final Message message = messages[index];
                        final bool isMe = message.sender.id == nadim1.id;
                        return _buildmessage(message, isMe);
                      }),
                )),
          ),
          _buildmesgcomposer()
        ],
      ),
    );
  }
}
