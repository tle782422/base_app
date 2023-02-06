import 'dart:async';

import 'package:my_first_app/base/base_bloc.dart';
import 'package:my_first_app/base/base_event.dart';
import 'package:my_first_app/event/click_image_event.dart';
import 'package:my_first_app/model/content.dart';

class ImageBloc extends BaseBloc {
  final StreamController<Content> _contentStreamController = StreamController<Content>();

  Stream<Content> get contentStream => _contentStreamController.stream;

  Content _contentData = Content();

  @override
  void dispatchEvent(BaseEvent event) {
    if (event is ClickImageEvent) {
      _contentData = event.content;
      _contentStreamController.sink.add(_contentData);
    }
  }

  @override
  void dispose() {
    _contentStreamController.close();
    super.dispose();
  }
}