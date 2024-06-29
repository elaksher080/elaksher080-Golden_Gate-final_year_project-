import 'package:flutter/material.dart';
import 'package:golden_gate/moduls/pages/chatbot/widgets/message_bubble.dart';
import 'package:golden_gate/moduls/pages/chatbot/widgets/message_composer.dart';

import 'message.dart';

class ChatScreen extends StatefulWidget {
  static const String routeName = "chatscreen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = [];

  void _addMessage(String text, bool isUser) {
    setState(() {
      _messages.insert(0, Message(text: text, isUser: isUser));
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(

      body: Column(
        children: [
          Container(
              padding:EdgeInsets.only(right: 250 ,top: 20),

      child: Text("Chat Bot",style:theme.textTheme.titleLarge?.copyWith(
            fontSize: 26,
          ),)),
          Container(
              padding:EdgeInsets.only(right: 110 ,top: 6),

              child: Text("Welcome to your assistance ",style:theme.textTheme.bodyMedium?.copyWith(
                fontSize: 18,
              ),)),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (ctx, index) => MessageBubble(
                message: _messages[index],
              ),
            ),
          ),
          MessageComposer(_addMessage),
        ],
      ),
    );
  }
}
