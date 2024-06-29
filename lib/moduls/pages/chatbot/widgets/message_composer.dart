import 'package:flutter/material.dart';

class MessageComposer extends StatefulWidget {
  final Function(String, bool) sendMessage;

  MessageComposer(this.sendMessage);

  @override
  _MessageComposerState createState() => _MessageComposerState();
}

class _MessageComposerState extends State<MessageComposer> {
  final TextEditingController _controller = TextEditingController();

  void _submitMessage() {
    if (_controller.text.trim().isEmpty) return;
    widget.sendMessage(_controller.text.trim(), true);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: 20),
       width: 380,
      height:45,
      padding: EdgeInsets.only(left: 10 ,right: 4, top: 0,bottom: 3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,width: 1,),
        borderRadius: BorderRadius.circular(40)

      ),
      child: Row(
        children: [
          Expanded(

            child: TextField(
              controller: _controller,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration.collapsed(
               hintStyle: theme.textTheme.bodyMedium?.copyWith(fontSize: 18,
               color: Colors.grey,
               ),
                hintText: 'What would you like to know?',
              ),
              onSubmitted: (_) => _submitMessage(),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send,color:theme.primaryColor,
                fill:BorderSide.strokeAlignOutside,
              size: 21,
            ),
            onPressed: _submitMessage,
          ),

        ],
      ),

    );

  }
}
