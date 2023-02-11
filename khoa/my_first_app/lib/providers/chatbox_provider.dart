import 'package:flutter/cupertino.dart';
import 'package:my_first_app/model/chat_log.dart';

class ChatBoxProvider with ChangeNotifier {
  late ChatLog clog;
  void loadinglog(ChatLog value) {
    clog = value;
    notifyListeners();
  }
}