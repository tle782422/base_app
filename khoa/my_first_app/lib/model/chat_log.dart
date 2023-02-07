import 'package:my_first_app/model/chat_line.dart';
import 'package:my_first_app/model/user.dart';

class ChatLog {
  int _id;
  User _friend;
  List<ChatLine> _log;
  
  int get id => _id;
  User get friend => _friend;
  List<ChatLine> get log => _log;

  set setid(int value) {
    _id = value;
  }
  set setfriend(User value) {
    _friend = value;
  }
  set setlog(List<ChatLine> value) {
    _log = value;
  }

  ChatLog({
    required int id,
    required User friend,
    List<ChatLine> log = const <ChatLine>[],
  })  : _id = id,
        _friend = friend,
        _log = log;
}