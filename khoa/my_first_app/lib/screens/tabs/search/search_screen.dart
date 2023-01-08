import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(width: 2)),
              errorBorder: OutlineInputBorder(),
              focusedErrorBorder:
                  OutlineInputBorder(borderSide: BorderSide(width: 2)),
            ),
            onSubmitted: (value) {},
          ),
        ),
      ],
    );
  }
}
