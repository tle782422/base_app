import 'dart:async';

import 'package:my_first_app/base/base_bloc.dart';
import 'package:my_first_app/base/base_event.dart';
import 'package:my_first_app/data/sql/content_table.dart';
import 'package:my_first_app/event/search_event.dart';
import 'package:my_first_app/model/content.dart';

class SearchBloc extends BaseBloc {
  final StreamController<List<Content>> _contentListStreamController = StreamController<List<Content>>();

  Stream<List<Content>> get contentListStream => _contentListStreamController.stream;

  final ContentTable _contentTable = ContentTable();

  List<Content> _contentListData = <Content>[];

  _search(String text) async {
    _contentListData = await _contentTable.searchContent(text);
    _contentListStreamController.sink.add(_contentListData);
  }

  @override
  void dispatchEvent(BaseEvent event) {
    if (event is SearchEvent) {
      _contentListData.clear();
      _search(event.text);
    }
  }

  @override
  void dispose() {
    _contentListStreamController.close();
    _contentListData.clear();
    super.dispose();
  }
}