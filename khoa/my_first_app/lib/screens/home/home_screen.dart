import 'package:flutter/material.dart';
import 'package:my_first_app/screens/home/browseall.dart';
import 'package:my_first_app/screens/home/chatview.dart';
//import 'package:my_first_app/screens/logout/logout.dart';

import 'todaynew.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {Key? key, required this.username, required this.password, this.name})
      : super(key: key);

  final String username;
  final String password;
  final String? name;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white24,
        foregroundColor: Colors.black,
        //automaticallyImplyLeading: false,
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
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
                const TodayNewListView(),
                Container(
                  height: 55,
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "BROWSE ALL",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
                  ),
                ),
                const BrowseAll(),
                Container(
                  height: 60,
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      side: const BorderSide(width: 2.0, color: Colors.black),
                    ),
                    onPressed: () => {},
                    child: const Text("SEE MORE"),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Search",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Search all photos",
                      enabledBorder: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                      errorBorder: OutlineInputBorder(),
                      focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                    ),
                    onSubmitted: (value) {},
                  ),
              ),
            ],
          ),
          //const Text(""),
          SingleChildScrollView(
            child: Column(
              children: const[
                Center(child: Text("Chats", style: TextStyle(fontSize: 20),),),
                ChatListView(),
              ],
            ),
          ),
          Column(
            children: [
              Text("name:" + widget.name!),
              Text("username:" + widget.username),
              Text("password:" + widget.password),
            ],
          ),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: const <Widget>[
          Tab(
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.search,
              color: Colors.red,
            ),
          ),
          //Spacer(),
          Tab(
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.red,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
