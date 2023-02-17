import 'package:flutter/material.dart';
import 'package:logindemo/screen/chats_screen.dart';
import 'package:logindemo/screen/home_screen.dart';
import 'package:logindemo/provider/login_provider.dart';
import 'package:logindemo/screen/search_screen.dart';
import 'package:provider/provider.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: const Icon(Icons.home_outlined),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                }),
            const Spacer(
              flex: 1,
            ),
            IconButton(
                icon: const Icon(Icons.search_outlined),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()));
                }),
            const Spacer(
              flex: 2,
            ),
            IconButton(
                icon: const Icon(Icons.chat_bubble_outline),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatsScreen()));
                }),
            const Spacer(
              flex: 1,
            ),
            IconButton(
                icon: const Icon(Icons.person_outline),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalScreen()));
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.pink,
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 60),
          alignment: Alignment.center,
          child: const CircleAvatar(
              radius: 80, backgroundImage: AssetImage('assets/avatar.jpg')),
        ),
        Consumer<LoginProvider>(
          builder: (context, login, child) {
            return Container(
              margin: const EdgeInsets.only(top: 35),
              alignment: Alignment.center,
              child: Text(
                login.username,
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.w300),
              ),
            );
          },
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: const Text(
            "SAN FRANCISCO, CA",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Consumer<LoginProvider>(builder: (context, login, child) {
          return Container(
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'FOLLOW ' + login.username,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, minimumSize: const Size(1000, 60)),
              ));
        }),
        Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'MESSAGE',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black, width: 4),
                  primary: Colors.white,
                  minimumSize: const Size(1000, 60)),
            ))
      ]),
    );
  }
}
