import 'package:chattingapp/models/user_model.dart';

class Message {
  final user sender;
  final String time;
  final String text;
  final bool Isliked;
  final bool unread;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      required this.Isliked,
      required this.unread});
}

final user nadim1 = user(id: 0, name: 'Nadim', imgurl: 'assets/img/nadim1.jpg');

final user nadim2 = user(id: 1, name: 'Hasan', imgurl: 'assets/img/nadim2.jpg');

final user nadim3 = user(id: 0, name: 'Soheb', imgurl: 'assets/img/nadim3.jpg');

final user nadim4 =
    user(id: 1, name: 'Artugrul', imgurl: 'assets/img/nadim4.jpg');

final user nadim5 = user(id: 0, name: 'Osman', imgurl: 'assets/img/nadim5.jpg');
List<user> favourite = [nadim1, nadim2, nadim3, nadim4, nadim5];
List<Message> chats = [
  Message(
      sender: nadim1,
      time: '1.10 AM',
      text:
          'Donec accumsan sit amet quam ac accumsan.Proin venenatis facilisis ipsum in vulputate tristique ',
      Isliked: true,
      unread: false),
  Message(
      sender: nadim2,
      time: '3.20 PM',
      text: 'Aenean luctus, ipsum in vulputate tristique,  ',
      Isliked: true,
      unread: true),
  Message(
      sender: nadim3,
      time: '4.00 AM',
      text:
          'Praesent nec dictum dolor. Suspendisse vit.Proin venenatis facilisis  ',
      Isliked: true,
      unread: false),
  Message(
      sender: nadim4,
      time: '11.10 AM',
      text: 'ultrices sem. Proin venenatis facilisis . ',
      Isliked: true,
      unread: true),
  Message(
      sender: nadim5,
      time: '12.00 PM',
      text:
          'Aenean nec dapibus odio. Nunc tempus lorem velProin venenatis facilisis .',
      Isliked: true,
      unread: true),
];

List<Message> messages = [
  Message(
      sender: nadim1,
      time: '1.10 AM',
      text:
          'Donec accumsan sit amet quam ac accumsan.Proin venenatis facilisis ipsum in vulputate tristique ',
      Isliked: true,
      unread: false),
  Message(
      sender: nadim2,
      time: '3.20 PM',
      text: 'Aenean luctus, ipsum in vulputate tristique,  ',
      Isliked: true,
      unread: true),
  Message(
      sender: nadim3,
      time: '4.00 AM',
      text:
          'Praesent nec dictum dolor. Suspendisse vit.Proin venenatis facilisis  ',
      Isliked: true,
      unread: false),
  Message(
      sender: nadim4,
      time: '11.10 AM',
      text: 'ultrices sem. Proin venenatis facilisis . ',
      Isliked: true,
      unread: true),
  Message(
      sender: nadim5,
      time: '12.00 PM',
      text:
          'Aenean nec dapibus odio. Nunc tempus lorem velProin venenatis facilisis .',
      Isliked: true,
      unread: true),
];
