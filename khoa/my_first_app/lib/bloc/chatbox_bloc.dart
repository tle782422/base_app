import 'dart:async';

import 'package:my_first_app/base/base_bloc.dart';
import 'package:my_first_app/base/base_event.dart';
import 'package:my_first_app/event/submit_text_chatbot_event.dart';

class ChatBoxBloc extends BaseBloc {


  @override
  void dispatchEvent(BaseEvent event) {
    if (event is SubmitTextChatBotEvent) {
      
    }
  }
  
}