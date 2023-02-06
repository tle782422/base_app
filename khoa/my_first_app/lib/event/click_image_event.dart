import 'package:my_first_app/base/base_event.dart';
import 'package:my_first_app/model/content.dart';

class ClickImageEvent extends BaseEvent {
  Content content = Content();
  ClickImageEvent(this.content);
}