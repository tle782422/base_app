import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
        elevation: 0.5,
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
          alignment: index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            constraints:
                BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.grey.withOpacity(0.8),
            ),

            child: Text('messag ewkqe hjqw ekjhqwkj hekjqwh kejhkqwj ehkwjqhekj hqwjkehqwjk hejkqwh kejhqwkj hekewjqhek jqwhkje $index'),
          ),
        );
      },
    );
  }

  /// build a text composer
  Widget _buildTextComposer(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.red,
      child: TextField(
        
      ),
    );
  }
}
