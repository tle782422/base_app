import 'package:flutter/material.dart';
import 'package:my_first_app/screens/home/chatbox.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  ChatListViewState createState() => ChatListViewState();
}

class ChatListViewState extends State<ChatListView> {
  final List<String> _avatar = <String>['assets/icons/avatar.png', 'assets/icons/avatar.png', 'assets/icons/avatar.png'];
  final List<String> _name = <String>['ABC', 'BCD', 'CDE'];
  final List<String> _text = <String>['@A', '@B', '@C'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 639,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        itemCount: _avatar.length,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatBox(),));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                          radius: 15,
                          backgroundImage:
                              AssetImage(_avatar[index])),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(_name[index],
                              style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text(_text[index],
                              style:
                                  const TextStyle(fontSize: 10, color: Colors.black)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
