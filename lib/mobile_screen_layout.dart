import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_clone/Screens/calls_screen.dart';
import 'package:whatsapp_clone/Screens/status_screen.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/Screens/contect_screen.dart';

import 'utils/data.dart';
import 'Screens/community_screen.dart';

class MobileScreenLayout extends StatefulWidget {
  MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout>
    with SingleTickerProviderStateMixin {
  @override
  late TabController _controller;
  void initState() {
    _controller = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: appBarColor,
              statusBarIconBrightness: Brightness.light,
            ),
            backgroundColor: appBarColor,
            title: Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 21,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_camera_outlined,
                      color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search_outlined, color: Colors.grey)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded, color: Colors.grey))
            ],
            bottom: TabBar(
                controller: _controller,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                unselectedLabelColor: klightgraycolor,
                isScrollable: true,
                tabs: [
                  Container(
                      width: 20,
                      child: Tab(child: Icon(Icons.people_alt_outlined))),
                  Container(
                    width: width / 4.7,
                    child: Tab(
                      text: 'Chats',
                    ),
                  ),
                  Container(
                    width: width / 4.7,
                    child: Tab(
                      text: 'Status',
                    ),
                  ),
                  Container(
                    width: width / 4.7,
                    child: Tab(
                      text: 'Calls',
                    ),
                  )
                ]),
          ),
          body: TabBarView(controller: _controller, children: [
            CommunityScreen(),
            ContectScreen(),
            StatusScreen(),
            CallsScreen()
          ])),
    );
  }
}
