import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/tabs/todaynew.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AutomaticKeepAliveClientMixin<HomeScreen> {

  @override
  bool get wantKeepAlive => true;
  
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _buildTitle("Discover", titleLsize),
          const SizedBox(height: 30),
          _buildTitle("WHAT'S NEW TODAY", titleSsize),
          const TodayNewListView(),
          const SizedBox(height: 30),
          _buildTitle("BROWSE ALL", titleSsize),
          _buildBrowesall(),
          _buildOutlineButton("SEE MORE"),
        ],
      ),
    );
  }

  Widget _buildTitle(String text, double size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildOutlineButton(String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          primary: Colors.black,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          side: const BorderSide(width: 2.0, color: Colors.black),
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }

  Widget _buildBrowesall() {
    return SizedBox(
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
            child: Image.asset("assets/images/a1.jpg", fit: BoxFit.fill)
          );
        },
      ),
    );
  }
    
}
