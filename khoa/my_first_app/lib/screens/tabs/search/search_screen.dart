import 'package:flutter/material.dart';
import 'package:my_first_app/bloc/search_bloc.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/event/search_event.dart';
import 'package:my_first_app/screens/widget/build_title.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var sbloc = SearchBloc();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildTitle(text: "Search", size: titleLsize),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: const InputDecoration(
              hintText: "Search all photos",
              enabledBorder: OutlineInputBorder(),
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(width: 2)),
              errorBorder: OutlineInputBorder(),
              focusedErrorBorder:
                  OutlineInputBorder(borderSide: BorderSide(width: 2)),
            ),
            onSubmitted: (value) {
              sbloc.event.add(SearchEvent(value));
            },
          ),
        ),
        //
        StreamBuilder(builder: (context, snapshot) {
          return const Text("");
        },)
      ],
    );
  }
}
