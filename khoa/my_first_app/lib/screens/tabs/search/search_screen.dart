import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/somematerial.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
            onSubmitted: (value) {},
          ),
        ),
      ],
    );
  }
}
