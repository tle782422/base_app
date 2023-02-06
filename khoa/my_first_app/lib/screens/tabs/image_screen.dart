import 'package:flutter/material.dart';
import 'package:my_first_app/bloc/image_bloc.dart';
import 'package:my_first_app/model/content.dart';
import 'package:provider/provider.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imagebloc = Provider.of<ImageBloc>(context);
    return Scaffold(
      body: StreamBuilder(
        stream: imagebloc.contentStream,
        builder: (context, snapshot) {
          return Stack(
            children: [
              Image.asset((snapshot.data as Content).image,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 15, backgroundImage: AssetImage((snapshot.data as Content).avatar)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        Text((snapshot.data as Content).name,
                            style: const TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        Text((snapshot.data as Content).username,
                            style: const TextStyle(
                                fontSize: 10, color: Colors.white)),
                      ],
                    ),
                    const Spacer(),
                    CloseButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
