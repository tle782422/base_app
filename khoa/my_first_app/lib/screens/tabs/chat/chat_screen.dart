import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/tabs/chat/chatbox_screen.dart';
import 'package:my_first_app/screens/widget/build_avatar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Center(
            child: Text(
              "Chats",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ChatListView(),
        ],
      ),
    );
  }
}

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  ChatListViewState createState() => ChatListViewState();
}

class ChatListViewState extends State<ChatListView> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatBox(),
                  ));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BuildUserAva(avatar: "assets/icons/avatar.png", username: "ABC", name: "AAA",fontcolor: defaultfontcolor)
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
