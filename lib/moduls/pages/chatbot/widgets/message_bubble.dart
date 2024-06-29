import 'package:flutter/material.dart';
import '../message.dart';


class MessageBubble extends StatelessWidget {
  final Message message;

  MessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        mainAxisAlignment: message.isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isUser)
            CircleAvatar(
              child: Icon(Icons.chat),
            ),
          SizedBox(width: 8.0),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            decoration: BoxDecoration(
              color: message.isUser ? Colors.blueAccent : Colors.grey[300],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              message.text,
              style: TextStyle(
                color: message.isUser ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
