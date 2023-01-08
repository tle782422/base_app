import 'package:flutter/material.dart';
import 'package:my_first_app/screens/tabs/chat/chat_screen.dart';
import 'package:my_first_app/screens/tabs/home/home_screen.dart';
import 'package:my_first_app/screens/tabs/profile/profile_screen.dart';
import 'package:my_first_app/screens/tabs/search/search_screen.dart';
import 'package:my_first_app/screens/tabs/settings/settings_screen.dart';
//import 'package:my_first_app/screens/logout/logout.dart';

class Tabbars extends StatefulWidget {
  const Tabbars({Key? key}) : super(key: key);

  @override
  TabbarsState createState() => TabbarsState();
}

class TabbarsState extends State<Tabbars> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            HomeScreen(),
            SearchScreen(),
            ChatScreen(),
            ProfileScreen(),
            SettingScreen()
          ],
        ),
        bottomNavigationBar: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            _buildBottomTab(Icons.home),
            _buildBottomTab(Icons.search),
            _buildBottomTab(Icons.chat_bubble),
            _buildBottomTab(Icons.person),
            _buildBottomTab(Icons.settings),
          ],
        ),
      );
  }

  Widget _buildBottomTab(IconData icon) {
    return Tab(
      icon: Icon(
        icon,
        color: Colors.red,
      ),
    );
  }
}
