import 'package:flutter/material.dart';
import 'package:logindemo/screen/chats_screen.dart';
import 'package:logindemo/screen/news.dart';
import 'package:logindemo/screen/personal_screen.dart';
import 'package:logindemo/screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: <Widget>[
              // Text("name:" + name!),
              // Text("username:" + username),
              // Text("password:" + password),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 60),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Discover",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Container(
                height: 55,
                padding: const EdgeInsets.only(left: 20, top: 30),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "WHAT'S NEW TODAY",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                ),
              ),
              const News(),
              Container(
                height: 55,
                padding: const EdgeInsets.only(left: 20, top: 30),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "BROWSE ALL",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                child: GridView.builder(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 150.0,
                  ),
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return TextButton(
                        onPressed: () {},
                        child: Image.asset("assets/kleewpp.png",
                            fit: BoxFit.fill));
                  },
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'SEE MORE',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.black, width: 4), backgroundColor: Colors.white,
                        minimumSize: const Size(1000, 60)),
                  ))
            ])));
  }
}
