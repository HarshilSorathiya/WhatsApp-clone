import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard({required this.message, required this.time});

  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 100),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
            color: senderMessageColor, borderRadius: BorderRadius.circular(10)),
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 3,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      time,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    // const SizedBox(
                    //   width: 5,
                    // ),
                    // const Icon(
                    //   Icons.done_all,
                    //   size: 20,
                    //   color: Colors.white60,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
