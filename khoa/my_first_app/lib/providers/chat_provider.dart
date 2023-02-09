import 'package:flutter/widgets.dart';
import 'package:my_first_app/model/chat_list_data.dart';
import 'package:my_first_app/model/chat_log.dart';

class ChatProvider with ChangeNotifier {
  List<ChatLog> ds = <ChatLog>[];
  void loadinglist() {
    ds.addAll(ChatLogData().getcontent());
    notifyListeners();
  }
}