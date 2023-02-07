import 'package:flutter/material.dart';
import 'package:my_first_app/bloc/chatbox_bloc.dart';
import 'package:my_first_app/event/submit_text_chatbot_event.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: _buildChatContent(context)),
          _buildTextComposer(context),
        ],
      ),
    );
  }

  Widget _buildChatContent(BuildContext context) {
    return ListView.separated(
      itemCount: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) {
        return Align(
          alignment:
              index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.grey.withOpacity(0.3),
            ),
            child: Text(
                'messag ewkqe hjqw ekjhqwkj hekjqwh kejhkqwj ehkwjqhekj hqwjkehqwjk hejkqwh kejhqwkj hekewjqhek jqwhkje $index'),
          ),
        );
      },
    );
  }

  /// build a text composer
  Widget _buildTextComposer(BuildContext context) {
    final cbbloc = ChatBoxBloc();
    return Container(
      color: Colors.white,
      child: TextField(
          onSubmitted: (value) {
            cbbloc.event.add(SubmitTextChatBotEvent(value));
          },
          decoration: const InputDecoration(
            hintText: " Type Text",
          ),
          ),
    );
  }
}
