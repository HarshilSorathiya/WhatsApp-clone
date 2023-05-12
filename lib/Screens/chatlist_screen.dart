import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/colors.dart';

import '../utils/data.dart';
import '../widgets/my_message_card.dart';
import '../widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  ChatList({super.key, required this.index});

  final int index;
  TextEditingController _controller = TextEditingController();
  List<Map<String, Object>> message = messages.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 250,
          backgroundColor: appBarColor,
          leading: Row(
            children: [
              SizedBox(
                width: 4,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(info[index]['profilePic']!),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    info[index]['name'].toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  // Text(
                  //   info[index]['name'].toString(),
                  //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  // ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam_rounded,
                  color: Colors.grey,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.call, color: Colors.grey)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_rounded, color: Colors.grey))
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/mobile_whatsapp_Background.png'))),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    if (messages[index]['isMe'] == true) {
                      return MyMessageCard(
                        message: message[index]['text'].toString(),
                        time: message[index]['time'].toString(),
                      );
                    } else {
                      return SenderMessageCard(
                        message: message[index]['text'].toString(),
                        time: message[index]['time'].toString(),
                      );
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _controller,
                        onChanged: (value) {
                          print(value);
                        },
                        cursorColor: messageColor,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        minLines: 1,
                        cursorWidth: 3,
                        cursorHeight: 25,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: mobileChatBoxColor,
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, style: BorderStyle.none),
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "Message",
                          prefixIcon: Icon(
                            Icons.tag_faces_rounded,
                            color: klightgraycolor,
                          ),
                          suffixIcon: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Transform.rotate(
                                  angle: 70,
                                  child: Icon(
                                    Icons.attach_file,
                                    color: klightgraycolor,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                CircleAvatar(
                                  backgroundColor: klightgraycolor,
                                  radius: 11,
                                  child: Icon(
                                    Icons.currency_rupee_rounded,
                                    size: 16,
                                    color: senderMessageColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.camera_alt_rounded,
                                  color: klightgraycolor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.mic,
                        size: 26,
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: messageColor),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  )
                ],
              )
            ],
          ),
        ));
  }
}

              // Row(
              //   children: [
              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              //         padding:
              //             EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //         decoration: BoxDecoration(
              //             color: senderMessageColor,
              //             borderRadius: BorderRadius.circular(30)),
              //         child: Row(
              //           children: [
              //             Icon(
              //               Icons.tag_faces_rounded,
              //               color: klightgraycolor,
              //             ),
              //             Expanded(
              //                 child: Container(
              //               height: 25,
              //               child: TextField(
              //                 style: TextStyle(fontSize: 18),
              //                 decoration: InputDecoration(
              //                   border: InputBorder.none,
              //                 ),
              //               ),
              //             )),
              //             Transform.rotate(
              //               angle: -90,
              //               child: Icon(
              //                 Icons.attachment,
              //                 color: klightgraycolor,
              //               ),
              //             ),
              //             SizedBox(
              //               width: 15,
              //             ),
              //             CircleAvatar(
              //               backgroundColor: klightgraycolor,
              //               radius: 11,
              //               child: Icon(
              //                 Icons.currency_rupee_rounded,
              //                 size: 16,
              //                 color: senderMessageColor,
              //               ),
              //             ),
              //             SizedBox(
              //               width: 15,
              //             ),
              //             Icon(
              //               Icons.camera_alt_rounded,
              //               color: klightgraycolor,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //     InkWell(
              //       onTap: () {},
              //       child: Container(
              //         padding: EdgeInsets.all(10),
              //         child: Icon(
              //           Icons.mic,
              //           size: 26,
              //         ),
              //         decoration: BoxDecoration(
              //             shape: BoxShape.circle, color: messageColor),
              //       ),
              //     ),
              //     SizedBox(
              //       width: 5,
              //     )
              //   ],
              // )