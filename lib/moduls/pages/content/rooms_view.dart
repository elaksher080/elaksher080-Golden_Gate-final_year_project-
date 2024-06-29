import 'package:flutter/material.dart';

class RoomsView extends StatelessWidget {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF090C9B)),
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Enter room ID:',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Room ID',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(12),
                              color: const Color(0xFF090C9B),
                            ),
                            child: Text(
                              'Join',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                            ),
                          ),
                          onTap: () {
                            // تنفيذ عملية الانضمام هنا
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: Text(
                  'Join room',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF090C9B),
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: const Color(0xFF090C9B),
            ),
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          // TextFormField(
                          //   controller: _controller,
                          //   decoration: InputDecoration(
                          //     border: const OutlineInputBorder(),
                          //     prefixText: 'Room ID :',
                          //     prefixStyle: Theme.of(context)
                          //         .textTheme
                          //         .titleLarge
                          //         ?.copyWith(fontSize: 15),
                          //     suffixIcon: IconButton(
                          //       icon: const Icon(Icons.save_alt),
                          //       onPressed: () {
                          //         String roomId = _controller.text;
                          //         // تنفيذ عملية الحفظ هنا
                          //         print('Saved Room ID: $roomId');
                          //         // يمكنك تنفيذ أي عملية أخرى تحتاجها، مثل إرسال المعرف إلى الخادم
                          //       },
                          //     ),
                          //     isDense: true,
                          //   ),
                          // ),

                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text(
                                    " Room ID : 556fvp89",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.copy,
                                    size: 12,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 5),
                              child: Text(
                                'Share room with\n your mates to join',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(
                                      color: Colors.grey,
                                      // fontSize: 20,
                                      // fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0, vertical: 9),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(12),
                                  color: const Color(0xFF090C9B),
                                ),
                                child: Text(
                                  'Share',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                              ),
                              onTap: () {
                                // تنفيذ عملية المشاركة هنا
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: Text(
                  'Create room',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
