import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/screens/tabs/todaynew.dart';
import 'package:my_first_app/somematerial.dart';

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
          const BuildTitle(text: "Discover", size: titleLsize),
          const SizedBox(height: 30),
          const BuildTitle(text: "WHAT'S NEW TODAY", size: titleSsize),
          TodayNewListView(),
          const SizedBox(height: 30),
          const BuildTitle(text: "BROWSE ALL", size: titleSsize),
          _buildBrowesall(),
          _buildOutlineButton("SEE MORE"),
        ],
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
