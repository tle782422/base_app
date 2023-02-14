import 'package:my_first_app/model/messenger.dart';
import 'package:my_first_app/model/chat_log.dart';
import 'package:my_first_app/model/user.dart';

class ChatLogData {
  List<ChatLog> getcontent() {
    List<ChatLog> ds = <ChatLog>[];
    ds.add(ChatLog(
      id: 1,
      friend:
          User(id: 1,name: "BCD", username: "B", password: "123"),
      log: [Messenger(id: 1,n: 1,text: "aeowjoawgjewaigj"),Messenger(id: 2,n: 2,text: "bieajoiea")],
    ));
    ds.add(ChatLog(
      id: 2,
      friend:
          User(id: 2,name: "DDD", username: "C", password: "123"),
      log: []
    ));
    ds.add(ChatLog(
      id: 3,
      friend:
          User(id: 3,name: "EEE", username: "D", password: "123"),
      log: []
    ));
    return ds;
  }
}
