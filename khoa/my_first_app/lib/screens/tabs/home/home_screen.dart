import 'package:flutter/material.dart';
import 'package:my_first_app/bloc/image_bloc.dart';
import 'package:my_first_app/bloc/morecontent_bloc.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/event/click_image_event.dart';
import 'package:my_first_app/model/content.dart';
import 'package:my_first_app/screens/tabs/image_screen.dart';
import 'package:my_first_app/screens/widget/build_title.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true;
  final _contentbloc = MoreContentBloc();

  @override
  void initState() {
    super.initState();
    _contentbloc.fetchcontents();
  }

  @override
  void dispose() {
    super.dispose();
    _contentbloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const BuildTitle(text: "Discover", size: titleLsize),
          const SizedBox(height: 30),
          const BuildTitle(text: "WHAT'S NEW TODAY", size: titleSsize),
          _buildTodaynew(),
          const SizedBox(height: 30),
          const BuildTitle(text: "BROWSE ALL", size: titleSsize),
          _buildBrowesall(),
          _buildOutlineButton(),
        ],
      ),
    );
  }

  Widget _buildOutlineButton() {
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
        onPressed: () {
          _contentbloc.fetchcontents();
        },
        child: const Text("SEE MORE"),
      ),
    );
  }

  Widget _buildBrowesall() {
    return SizedBox(
      child: StreamBuilder(
          stream: _contentbloc.contentStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = (snapshot.data as List<Content>).toList();
              return GridView.builder(
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 150.0,
                ),
                padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
                itemCount: data.length,
                //itemCount: data.length + 1,
                itemBuilder: (context, int index) {
                  return //index >= data.length ? const LoadContent() :
                      _buildContent(context, data[index]);
                },
              );
            } else {
              return const LoadContent();
            }
          }),
    );
  }

  Widget _buildTodaynew() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.47,
      child: //StreamBuilder(
          //stream: _contentbloc.contentStream,
          //builder: (context, snapshot) {
          //if (snapshot.hasData) {
          //   var data = (snapshot.data as List<Content>).toList();
          //   return
          ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  onPressed: () {},
                  // onPressed: () => Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ImageScreen(
                  //               data: data[index],
                  //             ))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/a1.jpg",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * 0.38,
                          width: MediaQuery.of(context).size.width * 0.9),
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage("assets/icons/avatar.png")),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text("ABC",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              Text("abc",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.black)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  // );
                  // },
                );
                //}
                //else {
                //return const LoadContent();
                //}
              }),
    );
  }

  TextButton _buildContent(BuildContext context, Content data) {
    return TextButton(
        onPressed: () {
          final _imagebloc = Provider.of<ImageBloc>(context, listen: false);
          _imagebloc.event.add(ClickImageEvent(data));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ImageScreen(),
            ),
          );
        },
        child: Image.asset(data.image, fit: BoxFit.fill));
  }
}

class LoadContent extends StatelessWidget {
  const LoadContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Center(
        child: SizedBox(
          width: 45,
          height: 45,
          child: CircularProgressIndicator(strokeWidth: 3.0),
        ),
      ),
    );
  }
}
