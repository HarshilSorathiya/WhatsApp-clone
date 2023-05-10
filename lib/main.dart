import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.amber,
      child: MaterialApp(
          title: "Whatsapp UI",
          theme: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.dark(background: backgroundColor)),
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: appBarColor,
              title: Text('whatsApp'),
            ),
          )),
    );
  }
}
