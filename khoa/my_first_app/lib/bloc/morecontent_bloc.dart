import 'dart:async';

import 'package:my_first_app/data/content.dart';
import 'package:my_first_app/data/content_data.dart';

class MoreContentBloc {
  final _content = <Content>[];
  final cdao = ContentData();
  final StreamController<List<Content>> _contentController = StreamController<List<Content>>();

  Stream<List<Content>> get contentStream => _contentController.stream;

  void fetchcontents() async {
    await Future.delayed(const Duration(seconds: 1));
    _content.addAll(cdao.getcontent());
    _contentController.sink.add(_content);
  }

  void dispose() {
    _contentController.close();
    _content.clear();
  }
}
